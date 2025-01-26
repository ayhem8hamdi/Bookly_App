import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListViewBuilder extends StatelessWidget {
  const BooksListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucces) {
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
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMsg: state.errorMsg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMsg});
  final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMsg,
      style: Styles.textSTyle22,
    );
  }
}
