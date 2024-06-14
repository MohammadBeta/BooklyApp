import 'package:bookly_application/featuers/home/presentation/widgets/home_view/books/book_listview_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: BookListViewItem(),
          );
        },
      ),
    );
  }
}
