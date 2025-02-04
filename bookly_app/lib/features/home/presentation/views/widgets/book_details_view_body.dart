import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_listview_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_best_seller_bookitem_footer.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_details_screen_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final double paddingValue = MediaQuery.of(context).size.height * 0.030;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: paddingValue),
              child: const CustomDetailsScreenAppbar(),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.57,
                child: const CustomBookImage(
                  bookUrl:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg/220px-Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg',
                  borderRaduis: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.583,
                child: const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "The Jungle Book",
                    style: Styles.textStyle30,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.52,
                child: const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Rudyard Kipling",
                    style: Styles.textSTyle21,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const RatingWidget(),
            const SizedBox(
              height: 24,
            ),
            const Center(child: BookDetailsButton()),
            const SizedBox(height: 33),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.52,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "You can also like",
                  style: Styles.textSTyle22.copyWith(fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 7),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * .25,
                  child: const BooksListViewBuilder()),
            ),
          ],
        ),
      ),
    );
  }
}
