import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRatingAndPrice extends StatelessWidget {
  const BookRatingAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "19.99\$",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 18,
            ),
            const SizedBox(width: 4),
            const Text(
              "4.8",
              style: Styles.textStyle16,
            ),
            const SizedBox(width: 4),
            Text(
              "(2390)",
              style: Styles.textStyle14.copyWith(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
