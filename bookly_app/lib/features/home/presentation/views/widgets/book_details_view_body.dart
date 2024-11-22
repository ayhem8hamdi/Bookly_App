import 'package:bookly_app/features/home/presentation/views/widgets/custom_details_screen_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: 42,
          ),
          CustomDetailsScreenAppbar()
        ],
      ),
    );
  }
}
