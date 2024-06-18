import 'package:bookly_application/featuers/home/presentation/widgets/custom_book_item.dart';
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
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: booksList!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomBookItem(
                imageUrl: booksList![index].volumeInfo!.imageLinks!.thumbnail!),
          );
        },
      ),
    );
  }
}
