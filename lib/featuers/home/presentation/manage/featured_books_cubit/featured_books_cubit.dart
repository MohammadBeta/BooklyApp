import 'package:bookly_application/core/api_service.dart';
import 'package:bookly_application/featuers/home/data/home_repos/home_repo_impl.dart';
import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.homeRepoImpl}) : super(FeaturedBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  void getFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    final result = await homeRepoImpl.fetchFeaturedBooks();

    result.fold(
        (failure) => emit(FeaturedBooksFailure(errorMessage: failure.message)),
        (booksList) {
      emit(FeaturedBooksSuccess(booksList: booksList));
    });
  }
}
