import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.borderRaduis,
    required this.bookUrl,
  });
  final double borderRaduis;
  final String bookUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: AspectRatio(
        aspectRatio: 0.67,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRaduis),
              image: DecorationImage(
                  image: NetworkImage(bookUrl), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
