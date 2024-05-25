import 'package:flutter/material.dart';
import 'package:food_test/core/const/configuration_size_app.dart';
import 'package:food_test/features/home/domain/state/food_item.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';
import 'package:util_commons/utils/extensions/extension_context.dart';
import 'package:widgets_ui/widget/card_widget/card_widget.dart';
import 'package:widgets_ui/widget/image/image_network_widget.dart';

class CardFood extends StatelessWidget {
  final FoodItem item;
  final VoidCallback callback;

  const CardFood({required this.item, required this.callback, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      onTap: callback,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: context.getMediaQuery.size.width,
                height: cardFoodHeight,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(radiusMedium),
                      topLeft: Radius.circular(radiusMedium)),
                  child: ImageNetWotkWidget(
                    item.imageUrl!,
                    fit: BoxFit.fitWidth,
                    icon: const Icon(Icons.image_not_supported_outlined),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(simpleSeparation),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(radiusMedium),
                  ),
                  child: Image.network(
                    item.countryFlagUrl!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: simpleSeparation, vertical: simpleSeparation),
            child: Text(
              item.name!,
              textAlign: TextAlign.start,
              style: context.getThemeData.textTheme.labelLarge
                  ?.copyWith(color: context.getThemeData.colorScheme.secondary),
            ),
          )
        ],
      ),
    );
  }
}
