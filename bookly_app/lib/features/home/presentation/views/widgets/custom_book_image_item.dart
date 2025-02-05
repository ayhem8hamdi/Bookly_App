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
    const String fallbackUrl =
        "https://media.istockphoto.com/id/827247322/vector/danger-sign-vector-icon-attention-caution-illustration-business-concept-simple-flat-pictogram.jpg?s=612x612&w=0&k=20&c=BvyScQEVAM94DrdKVybDKc_s0FBxgYbu-Iv6u7yddbs=";

    return Padding(
      padding: const EdgeInsets.only(right: 18),
      child: AspectRatio(
        aspectRatio: 0.67,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRaduis),
            image: DecorationImage(
              image: NetworkImage(bookUrl),
              fit: BoxFit.fill,
            ),
          ),
          child: Image.network(
            bookUrl,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return Image.network(fallbackUrl, fit: BoxFit.fill);
            },
          ),
        ),
      ),
    );
  }
}
