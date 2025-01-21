import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 50, bottom: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 110,
          ),
          IconButton(
              onPressed: () => Get.toNamed(AppRouter.searchView),
              icon: const Icon(FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white, size: 27))
        ],
      ),
    );
  }
}
