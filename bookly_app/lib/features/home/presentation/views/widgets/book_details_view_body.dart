import 'package:bookly_app/core/utils/styles.dart';
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
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: paddingValue),
            child: const CustomDetailsScreenAppbar(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.57,
            child: const CustomBookImage(
              borderRaduis: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.583,
            child: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "The Jungle Book",
                style: Styles.textStyle30,
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.52,
            child: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Rudyard Kipling",
                style: Styles.textSTyle21,
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
          BookDetailsButton()
        ],
      ),
    );
  }
}

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
      child: const Row(
        children: [
          BookDetailsButtonContent(
              color: Colors.black,
              text: '19.99 \$',
              borderRaduis: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  bottomLeft: Radius.circular(13))),
          BookDetailsButtonContent(
              color: Colors.amber,
              text: 'Free Preview',
              borderRaduis: BorderRadius.only(
                  topRight: Radius.circular(13),
                  bottomRight: Radius.circular(13)))
        ],
      ),
    );
  }
}

class BookDetailsButtonContent extends StatelessWidget {
  const BookDetailsButtonContent(
      {super.key,
      required this.text,
      required this.borderRaduis,
      required this.color});
  final String text;
  final BorderRadiusGeometry borderRaduis;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRaduis,
        ),
        child: Text(
          text,
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
