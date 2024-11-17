import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_listview_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_best_seller_item.dart';
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
        BestSellerBooksListBuilder(),
      ],
    );
  }
}

class BestSellerBooksListBuilder extends StatelessWidget {
  const BestSellerBooksListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
          child: BestSellerBookItem(),
        ),
        childCount: 10,
      ),
    );
  }
}
