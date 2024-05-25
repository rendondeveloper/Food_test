import 'package:flutter/material.dart';
import 'package:food_test/core/extension/extension_context.dart';
import 'package:food_test/features/home/domain/state/food_item.dart';
import 'package:food_test/features/home/presentation/widgets/card_food.dart';
import 'package:food_test/features/search_food/framework/presentation/page/search_food.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return CardFood(
            callback: () {},
            item: FoodItem(
                identifier: index,
                name: "15-minute chicken & halloumi burgers",
                imageUrl:
                    "https://www.themealdb.com/images/media/meals/vdwloy1713225718.jpg",
                countryFlagUrl:
                    "https://www.themealdb.com/images/icons/flags/big/64/us.png"),
          );
        },
      ),
    );
  }
}
