import 'package:bookly_application/core/api_service.dart';
import 'package:bookly_application/core/errors/fauiler.dart';
import 'package:bookly_application/core/utilis/constants/api_url.dart';
import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly_application/featuers/search/data/repos/search_books_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchBooksRepoImpl extends SearchBooksRepo {
  final ApiService apiService;
  SearchBooksRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> searchBooks(
      {required String searchText}) async {
    List<BookModel> booksList = [];
    try {
      final data = await apiService.getData(AppApiUrl.searchBooks + searchText);
      if (!data.keys.contains('items')) {
        return right([]);
      }
      for (int i = 0; i < data['items'].length; i++) {
        booksList.add(BookModel.fromJson(data['items'][i]));
      }
      return right(booksList);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioError(ex));
      }
      return left(ServerFailure(message: ex.toString()));
    }
  }
}
