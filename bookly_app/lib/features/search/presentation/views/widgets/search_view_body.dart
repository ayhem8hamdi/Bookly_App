import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_delegate_builder.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_view_header.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SearchViewHeader(),
        ),
        BestSellerBooksDelegateBuilder(),
      ],
    );
  }
}
