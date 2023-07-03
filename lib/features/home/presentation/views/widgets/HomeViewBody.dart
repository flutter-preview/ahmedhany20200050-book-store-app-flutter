


import 'package:flutter/material.dart';
import '../../../../../core/Styles.dart';
import 'BooksListView.dart';
import 'CustomAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomAppBar(),
          BooksListView(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 32),
            child: Row(
              children: const [
                Expanded(child: Text("Best Seller",style: Styles.titleMedium,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}








