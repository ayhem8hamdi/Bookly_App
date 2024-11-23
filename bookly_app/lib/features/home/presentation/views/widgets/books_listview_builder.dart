import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BooksListViewBuilder extends StatelessWidget {
  const BooksListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (context, index) => const CustomBookImage(
                borderRaduis: 12,
              )),
    );
  }
}
