import 'package:bookly_application/core/errors/fauiler.dart';
import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchBooksRepo{
  Future<Either<Failure, List<BookModel>>> searchBooks({required String searchText});
}