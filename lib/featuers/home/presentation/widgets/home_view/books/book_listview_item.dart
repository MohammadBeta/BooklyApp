import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.bookModel});
  final BookModel? bookModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // image:
          //  DecorationImage(
          //   fit: BoxFit.fill,
          //   image: NetworkImage(bookModel!.volumeInfo!.imageLinks!.thumbnail!),
          // ),
        ),
        child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: bookModel!.volumeInfo!.imageLinks!.thumbnail!),
      ),
    );
  }
}
