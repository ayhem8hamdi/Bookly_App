import 'package:bookly_app/features/search/presentation/views/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

class SearchViewHeader extends StatelessWidget {
  const SearchViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: MediaQuery.of(context).size.width * .86,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * .085),
            child: const CustomTextField(),
          )),
    );
  }
}
