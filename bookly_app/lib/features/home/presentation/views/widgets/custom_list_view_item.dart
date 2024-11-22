import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.borderRaduis});
  final double borderRaduis;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: AspectRatio(
        aspectRatio: 0.67,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRaduis),
              image: const DecorationImage(
                  image: AssetImage(AssetsData.test), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
