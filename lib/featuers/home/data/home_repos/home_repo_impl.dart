import 'package:bookly_application/core/api_service.dart';
import 'package:bookly_application/core/errors/fauiler.dart';
import 'package:bookly_application/core/utilis/constants/api_url.dart';
import 'package:bookly_application/featuers/home/data/home_repos/home_repo.dart';
import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      Map<String, dynamic> data =
          await apiService.getData(AppApiUrl.fetchNewestBooks);
      List<BookModel> booksList = [];

      data['items'].forEach((key, value) {
        booksList.add(BookModel.fromJson(value));
      });
      return right(booksList);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioError(ex));
      }
      return left(ServerFailure(message: ex.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      Map<String, dynamic> data =
          await apiService.getData(AppApiUrl.fetchFeaturedBooks);
      List<BookModel> booksList = [];

      data['items'].forEach((key, value) {
        booksList.add(BookModel.fromJson(value));
      });
      return right(booksList);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioError(ex));
      }
      return left(ServerFailure(message: ex.toString()));
    }
  }
}
