import 'package:bookly_application/featuers/search/data/repos/search_books_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/models/book_model/book_model.dart';

part 'search_book_state.dart';

class SearchBooksCubit extends Cubit<SearchBookState> {
  SearchBooksCubit(this.searchBooksRepoImpl) : super(SearchBooksInitial());

  final SearchBooksRepoImpl searchBooksRepoImpl;
  Future<void> searchBooks({required String searchText}) async {
    emit(SearchBooksLoading());
    final result =
        await searchBooksRepoImpl.searchBooks(searchText: searchText);
    result.fold((failuer) {
      emit(SearchBooksFailuer(errorMessage: failuer.message));
    }, (booksList) {
      if(booksList.isNotEmpty)
      {
      emit(SearchBooksSuccess(booksList: booksList));
      }else{

      emit(SearchBooksNoSearchData());
      }
    });
  }
}
