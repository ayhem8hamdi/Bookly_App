import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDetailsScreenAppbar extends StatelessWidget {
  const CustomDetailsScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close,
              size: 32,
              color: Colors.white,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 32,
              color: Colors.white,
            )),
      ],
    );
  }
}
