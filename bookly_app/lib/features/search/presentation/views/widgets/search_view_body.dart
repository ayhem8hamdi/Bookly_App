import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width * .86,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * .085),
                  child: const CustomTextField(),
                )),
          )
        ],
      ),
    );
  }
}
