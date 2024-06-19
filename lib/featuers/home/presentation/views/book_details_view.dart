import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_application/featuers/home/presentation/manage/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/book_details_view/book_details_appbar.dart';
import '../widgets/book_details_view/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    String category = widget.bookModel.volumeInfo.categories.isNotEmpty
        ? widget.bookModel.volumeInfo.categories[0]
        : widget.bookModel.volumeInfo.title!;
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BookDetailsAppBar(),
      body: SafeArea(
          child: BookDetailsViewBody(
        bookModel: widget.bookModel,
      )),
    );
  }
}
