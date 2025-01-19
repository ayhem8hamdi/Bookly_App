import 'package:bookly_app/features/home/presentation/views/widgets/book_details_content_button.dart';
import 'package:flutter/material.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .84,
      child: const Row(
        children: [
          BookDetailsButtonContent(
              fontWeight: FontWeight.w900,
              textColor: Colors.black,
              color: Colors.white,
              text: '19.99 \$',
              borderRaduis: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12))),
          BookDetailsButtonContent(
              color: Color(0xffEF8262),
              text: 'Free Preview',
              borderRaduis: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)))
        ],
      ),
    );
  }
}
