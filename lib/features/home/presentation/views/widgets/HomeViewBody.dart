


import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'CustomListViewItem.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          CustomAppBar(),
          CustomListViewItem(),
        ],
      ),
    );
  }
}






