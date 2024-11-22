import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDetailsScreenAppbar extends StatelessWidget {
  const CustomDetailsScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final double iconSize = MediaQuery.of(context).size.width * 0.08;
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.close,
              size: iconSize,
              color: Colors.white,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: iconSize,
              color: Colors.white,
            )),
      ],
    );
  }
}
