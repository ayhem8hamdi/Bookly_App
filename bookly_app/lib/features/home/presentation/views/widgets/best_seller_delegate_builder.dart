import 'package:bookly_app/features/home/presentation/views/widgets/custom_best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooksDelegateBuilder extends StatelessWidget {
  const BestSellerBooksDelegateBuilder({super.key});

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
