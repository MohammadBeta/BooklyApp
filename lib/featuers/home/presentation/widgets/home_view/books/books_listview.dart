import 'package:bookly_application/featuers/home/presentation/widgets/home_view/books/book_listview_item.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/book_model/book_model.dart';

class BooksListView extends StatelessWidget {
  BooksListView({super.key, this.booksList});
  List<BookModel>? booksList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: booksList!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookItem(bookModel: booksList![index]),
          );
        },
      ),
    );
  }
}
