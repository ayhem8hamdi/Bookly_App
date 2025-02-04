import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_delegate_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_listview_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                BooksListViewBuilder(),
                SizedBox(height: 33),
                Text(
                  "Best Seller",
                  style: Styles.textSTyle22,
                ),
              ],
            ),
          ),
        ),
        BestSellerBooksDelegateBuilder(),
      ],
    );
  }
}
