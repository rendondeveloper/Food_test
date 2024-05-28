import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget(
      {Key? key, required this.onTap, required this.isFavorite})
      : super(key: key);

  final bool isFavorite;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
        color: Colors.red,
      ),
    );
  }
}
