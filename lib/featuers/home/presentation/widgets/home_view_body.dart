import 'package:flutter/material.dart';

import 'books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 8, right: 8),
      child: Column(
        children: [
          BooksListView(),
        ],
      ),
    );
  }
}

