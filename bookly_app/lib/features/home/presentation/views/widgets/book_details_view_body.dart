import 'package:bookly_app/features/home/presentation/views/widgets/custom_details_screen_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.height * 0.044;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: paddingValue),
            child: const CustomDetailsScreenAppbar(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const CustomListViewItem(
              borderRaduis: 32,
            ),
          )
        ],
      ),
    );
  }
}
