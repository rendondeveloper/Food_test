import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_test/core/const/configuration_navigation_paths.dart';
import 'package:food_test/core/extension/extension_context.dart';
import 'package:food_test/features/search_food/domain/state/search_status.dart';
import 'package:food_test/features/search_food/framework/bloc/search_bloc.dart';
import 'package:food_test/features/search_food/framework/presentation/widgets/card_search.dart';
import 'package:go_router/go_router.dart';
import 'package:util_commons/utils/extensions/extension_context.dart';
import 'package:widgets_ui/widget/empty/empty_state_simple_widget.dart';

class SearchFood extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final state = context.watch<SearchBloc>();

    return ListView.builder(
      itemCount: state.state.results?.length ?? 0,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("${state.state.results![index].name} tres"),
          onTap: () {
            close(context, "${state.state.results![index].name} tres");
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      _searchFood(context, query);
    }

    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state.status == SearchStatus.loading()) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }

        if (state.status == SearchStatus.success()) {
          return ListView.builder(
            itemCount: state.results?.length ?? 0,
            itemBuilder: (context, index) {
              return CardSearch(
                item: state.results![index],
                callback: () {
                  query = "${state.results![index].name}";
                  context.push("$pathInitial$detailPage", extra: {
                    identifierTransport: state.results![index].identifier,
                    imageUrlTransport: state.results![index].imageUrl
                  });
                  close(context, query);
                },
              );
            },
          );
        }

        return EmptyStateSimpleWidget(
          icon: const Icon(Icons.error_outline_outlined),
          text: Text(context.getStrings.search_page_empty_state,
              textAlign: TextAlign.center,
              style: context.getThemeData.textTheme.headlineMedium?.copyWith(
                  color: context.getThemeData.colorScheme.secondary)),
        );
      },
    );
  }

  _searchFood(BuildContext context, String query) async {
    context.read<SearchBloc>().add(SearchEvent.search(query));
  }
}
