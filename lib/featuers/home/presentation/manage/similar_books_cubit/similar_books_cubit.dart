import 'package:bookly_application/featuers/home/data/home_repos/home_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepoImpl) : super(SimilarBooksInitial());
  final HomeRepoImpl homeRepoImpl;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepoImpl.fetchSimilarBooks(category: category);
    result.fold((failuer) {
      emit(SimilarBooksFailure(errorMessage: failuer.message));
    }, (booksList) {
      emit(SimilarBooksSuccess(booksList: booksList));
    });
  }
}
