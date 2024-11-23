import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingAndPrice extends StatelessWidget {
  const BookRatingAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "19.99\$",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
        RatingWidget()
      ],
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 17,
        ),
        const SizedBox(width: 4),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 4),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
