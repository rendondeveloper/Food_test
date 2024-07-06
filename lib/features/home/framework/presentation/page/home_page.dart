import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_test/core/const/configuration_navigation_paths.dart';
import 'package:food_test/core/extension/extension_context.dart';
import 'package:food_test/features/home/domain/state/home_process.dart';
import 'package:food_test/features/home/framework/presentation/bloc/home_bloc.dart';
import 'package:food_test/features/home/framework/presentation/widgets/card_food.dart';
import 'package:food_test/features/search_food/framework/presentation/page/search_food.dart';
import 'package:go_router/go_router.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';
import 'package:util_commons/utils/extensions/extension_context.dart';
import 'package:widgets_ui/widget/empty/empty_state_action_widget.dart';
import 'package:widgets_ui/widget/loader/loader.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  void _onScroll() {
    if (_scrollController.position.atEdge) {
      if (_scrollController.position.pixels != 0) {
        context.read<HomeBloc>().add(const HomeEvent.getNewData());
      }
    }
  }

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.started());
    });
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<HomeBloc>();
    final state = bloc.state;

    return IgnorePointer(
      ignoring: state.state == HomeProcess.loading(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(context.getStrings.home_page_toolbar_title),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: SearchFood(),
                  );
                },
              ),
            ],
          ),
          body: Stack(
            children: [
              if (state.state == HomeProcess.loading()) const LoaderWidget(),
              if (state.state == HomeProcess.emptyState())
                EmptyStateActionWidget(
                  icon: const Icon(Icons.filter_drama_outlined),
                  text: Text(context.getStrings.home_page_empty_state,
                      textAlign: TextAlign.center,
                      style: context.getThemeData.textTheme.headlineMedium
                          ?.copyWith(
                              color:
                                  context.getThemeData.colorScheme.secondary)),
                  action: FilledButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(const HomeEvent.started());
                    },
                    child: Text(
                      context.getStrings.home_page_error_state_action,
                      style: context.getThemeData.textTheme.bodySmall?.copyWith(
                          color: context.getThemeData.colorScheme.secondary),
                    ),
                  ),
                ),
              if (state.state == HomeProcess.error())
                EmptyStateActionWidget(
                  icon: const Icon(Icons.error_outline_outlined),
                  text: Text(context.getStrings.home_page_error_state,
                      textAlign: TextAlign.center,
                      style: context.getThemeData.textTheme.headlineMedium
                          ?.copyWith(
                              color:
                                  context.getThemeData.colorScheme.secondary)),
                  action: FilledButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(const HomeEvent.started());
                    },
                    child: Text(
                      context.getStrings.home_page_error_state_action,
                      style: context.getThemeData.textTheme.bodySmall?.copyWith(
                          color: context.getThemeData.colorScheme.secondary),
                    ),
                  ),
                ),
              if (state.state == HomeProcess.success())
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        flex: 1,
                        child: CarouselSlider(
                          options: CarouselOptions(height: 400.0),
                          items: state.items?.map((index2) {
                            return Builder(
                              builder: (BuildContext context) {
                                return CardFood(
                                  callback: () {
                                    context.push("$pathInitial$detailPage",
                                        extra: {
                                          identifierTransport:
                                              index2.identifier,
                                          imageUrlTransport: index2.imageUrl
                                        });
                                  },
                                  onTapFavorite: () {
                                    context.read<HomeBloc>().add(
                                        HomeEvent.changeFavorite(index2, 0));
                                  },
                                  item: index2,
                                );
                              },
                            );
                          }).toList(),
                        )),
                    Expanded(
                      flex: 1,
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: state.items?.length ?? 0,
                        itemBuilder: (context, index) {
                          return CardFood(
                            callback: () {
                              context.push("$pathInitial$detailPage", extra: {
                                identifierTransport:
                                    state.items![index].identifier,
                                imageUrlTransport: state.items![index].imageUrl
                              });
                            },
                            onTapFavorite: () {
                              context.read<HomeBloc>().add(
                                  HomeEvent.changeFavorite(
                                      state.items![index], index));
                            },
                            item: state.items![index],
                          );
                        },
                      ),
                    ),
                    if (state.loadNews == true)
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: doubleSeparation),
                        child: CircularProgressIndicator.adaptive(),
                      )
                  ],
                )
            ],
          )),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }
}
