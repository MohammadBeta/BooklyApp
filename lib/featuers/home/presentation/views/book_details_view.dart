import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../widgets/book_details_view/book_details_appbar.dart';
import '../widgets/book_details_view/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BookDetailsAppBar(),
      body: SafeArea(
          child: BookDetailsViewBody(
        bookModel: bookModel,
      )),
    );
  }
}
