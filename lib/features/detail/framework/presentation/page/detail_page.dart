import 'package:flutter/material.dart';
import 'package:util_commons/utils/commons/dimens_app.dart';
import 'package:util_commons/utils/extensions/extension_context.dart';
import 'package:widgets_ui/widget/image/image_network_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            floating: false,
            pinned: true,
            leading: IconButton(
              color: context.getThemeData.colorScheme.onPrimary,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Collapsible Toolbar",
                style: context.getThemeData.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.getThemeData.colorScheme.secondary),
              ),
              background: const ImageNetWotkWidget(
                  "https://www.themealdb.com/images/media/meals/vdwloy1713225718.jpg"),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: simpleSeparation,
              crossAxisSpacing: simpleSeparation,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Chip(
                  avatar: ImageNetWotkWidget(
                      "https://www.themealdb.com/images/ingredients/Chicken%20Breasts.png"),
                  label: Text("2 Chiken Breats"),
                );
              },
              childCount: 12,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                      "STEP 1 Put the chicken breasts between two pieces of baking parchment and use a rolling pin to gently bash them until they are approximately 1cm thick."),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
