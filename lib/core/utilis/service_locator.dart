import 'package:bookly_application/core/api_service.dart';
import 'package:bookly_application/featuers/home/data/home_repos/home_repo_impl.dart';
import 'package:bookly_application/featuers/search/data/repos/search_books_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void setupServiceLocator() {
  GetIt.I.registerSingleton<ApiService>(ApiService(dio: Dio()));
  GetIt.I.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(apiService: GetIt.I.get<ApiService>()));

  GetIt.I.registerSingleton<SearchBooksRepoImpl>(
      SearchBooksRepoImpl(apiService: GetIt.I.get<ApiService>()));
}
