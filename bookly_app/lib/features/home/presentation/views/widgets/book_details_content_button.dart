import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsButtonContent extends StatelessWidget {
  const BookDetailsButtonContent(
      {super.key,
      required this.text,
      required this.borderRaduis,
      required this.color,
      this.textColor = Colors.white,
      this.fontWeight = FontWeight.w600});
  final String text;
  final BorderRadiusGeometry borderRaduis;
  final Color color;
  final Color textColor;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(15),
        splashColor: Colors.blue.withOpacity(0.3),
        highlightColor: Colors.blue.withOpacity(0.2),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 17),
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRaduis,
          ),
          child: Text(
            text,
            style: Styles.textStyle16.copyWith(
                fontWeight: fontWeight, fontSize: 17, color: textColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
