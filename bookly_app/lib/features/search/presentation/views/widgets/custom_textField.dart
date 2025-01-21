import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.textStyle16
          .copyWith(fontWeight: FontWeight.w400, fontSize: 20),
      decoration: InputDecoration(
          hintText: 'Search',
          contentPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          hintStyle: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.3),
              fontSize: 20),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: null,
                icon: Icon(FontAwesomeIcons.magnifyingGlass,
                    color: Colors.white, size: 27)),
          ),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                width: 2,
                color: Colors.white,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                color: Colors.white.withOpacity(0.86),
              )),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                color: Colors.white.withOpacity(0.86),
              ))),
    );
  }
}
