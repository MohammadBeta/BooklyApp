part of 'search_book_cubit.dart';

sealed class SearchBookState {}

final class SearchBooksInitial extends SearchBookState {}

final class SearchBooksLoading extends SearchBookState {}

final class SearchBooksSuccess extends SearchBookState {

    final List<BookModel> booksList;
  SearchBooksSuccess({required this.booksList});
}

final class SearchBooksFailuer extends SearchBookState {
    final String errorMessage;
  SearchBooksFailuer({required this.errorMessage});
}


final class SearchBooksNoSearchData extends SearchBookState {}