import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  CustomBookItem({super.key, this.bookModel});
  BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(16)),
        child: bookModel == null
            ? const SizedBox()
            : Text(bookModel!.volumeInfo!.title!),
      ),
    );
  }
}
