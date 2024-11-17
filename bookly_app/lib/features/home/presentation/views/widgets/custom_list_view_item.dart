import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: AspectRatio(
        aspectRatio: 0.67,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage(AssetsData.test), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
