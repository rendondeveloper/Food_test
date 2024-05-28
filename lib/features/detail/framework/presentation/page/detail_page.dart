import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_test/core/extension/extension_context.dart';
import 'package:food_test/features/detail/domain/state/detail_process.dart';
import 'package:food_test/features/detail/framework/presentation/bloc/detail_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';
import 'package:util_commons/utils/extensions/extension_context.dart';
import 'package:widgets_ui/widget/empty/empty_state_action_widget.dart';
import 'package:widgets_ui/widget/image/image_network_widget.dart';
import 'package:widgets_ui/widget/loader/loader.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.identifier, required this.imageUrl})
      : super(key: key);

  final String identifier, imageUrl;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<DetailBloc>()
          .add(DetailBlocEvent.setImageToolbar(widget.imageUrl));
      context
          .read<DetailBloc>()
          .add(DetailBlocEvent.getDetail(widget.identifier));
    });

    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        final offset = _scrollController.offset;
        final bool isCollapsed = offset > 100;
        if (isCollapsed != _isCollapsed) {
          setState(() {
            _isCollapsed = isCollapsed;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            leading: IconButton(
              color: context.getThemeData.colorScheme.onPrimary,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.pop();
              },
            ),
            flexibleSpace: BlocBuilder<DetailBloc, DetailBlocState>(
              builder: (context, state) {
                return FlexibleSpaceBar(
                  centerTitle: true,
                  title: Visibility(
                    visible: state.state == DetailProcess.success(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                              .withOpacity(_isCollapsed ? 0.0 : 0.6),
                          borderRadius: BorderRadius.circular(radiusBig)),
                      child: Padding(
                        padding:
                            EdgeInsets.all(_isCollapsed ? 0 : simpleSeparation),
                        child: Text(
                          state.name ?? "",
                          style: context.getThemeData.textTheme.titleMedium
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: _isCollapsed
                                      ? context
                                          .getThemeData.colorScheme.tertiary
                                      : context
                                          .getThemeData.colorScheme.secondary),
                        ),
                      ),
                    ),
                  ),
                  background: ImageNetWotkWidget(state.imageUrl ?? ""),
                );
              },
            ),
          ),
          BlocBuilder<DetailBloc, DetailBlocState>(
            builder: (context, state) {
              return SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: simpleSeparation,
                  crossAxisSpacing: simpleSeparation,
                  childAspectRatio: 4.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Chip(
                      avatar: ImageNetWotkWidget(state.imageUrl ?? ""),
                      labelStyle:
                          context.getThemeData.textTheme.labelLarge?.copyWith(
                        color: context.getThemeData.colorScheme.secondary,
                      ),
                      label: Text(
                        state.ingredients?[index].name ?? "",
                        textAlign: TextAlign.start,
                      ),
                    );
                  },
                  childCount: state.ingredients?.length ?? 0,
                ),
              );
            },
          ),
          BlocBuilder<DetailBloc, DetailBlocState>(
            builder: (context, state) {
              if (state.state == DetailProcess.loading()) {
                return const SliverFillRemaining(
                  child: LoaderWidget(),
                );
              }

              if (state.state == DetailProcess.error()) {
                return SliverFillRemaining(
                  child: EmptyStateActionWidget(
                    icon: const Icon(Icons.error_outline_outlined),
                    text: Text(context.getStrings.detail_page_error_state,
                        textAlign: TextAlign.center,
                        style: context.getThemeData.textTheme.headlineMedium
                            ?.copyWith(
                                color: context
                                    .getThemeData.colorScheme.secondary)),
                    action: FilledButton(
                      onPressed: () {
                        context
                            .read<DetailBloc>()
                            .add(DetailBlocEvent.getDetail(widget.identifier));
                      },
                      child: Text(
                        context.getStrings.detail_page_error_state_action,
                        style: context.getThemeData.textTheme.bodySmall
                            ?.copyWith(
                                color:
                                    context.getThemeData.colorScheme.secondary),
                      ),
                    ),
                  ),
                );
              }

              if (state.state == DetailProcess.success()) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ListTile(
                          title: Text(
                              state.instructions?[index].description ?? "",
                              style: context.getThemeData.textTheme.labelLarge
                                  ?.copyWith(
                                color:
                                    context.getThemeData.colorScheme.secondary,
                              )));
                    },
                    childCount: state.instructions?.length ?? 0,
                  ),
                );
              }

              return const Placeholder();
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
