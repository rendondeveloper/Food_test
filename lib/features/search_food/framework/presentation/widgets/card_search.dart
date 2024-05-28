import 'package:flutter/material.dart';
import 'package:food_test/core/const/configuration_size_app.dart';
import 'package:food_test/features/search_food/domain/state/search_item.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';
import 'package:util_commons/utils/extensions/extension_context.dart';
import 'package:widgets_ui/widget/image/image_network_widget.dart';

class CardSearch extends StatelessWidget {
  final SearchItem item;
  final VoidCallback callback;

  const CardSearch({required this.item, required this.callback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: simpleSeparation,
              ),
              SizedBox(
                  height: cardSearchItemSize,
                  width: cardSearchItemSize,
                  child: ImageNetWotkWidget(item.imageUrl ?? "")),
              const SizedBox(
                width: simpleSeparation,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: simpleSeparation),
                child: Text(
                  item.name!,
                  textAlign: TextAlign.start,
                  style: context.getThemeData.textTheme.labelLarge?.copyWith(
                      color: context.getThemeData.colorScheme.secondary),
                ),
              )
            ],
          ),
          const SizedBox(
            height: simpleSeparation,
          ),
        ],
      ),
    );
  }
}
