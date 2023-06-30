




import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Constants.imageDir),
              )
          ),
        ),
      ),
    );
  }
}