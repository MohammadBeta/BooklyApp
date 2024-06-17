part of 'best_seller_books_cubit.dart';

abstract class BestSellerState {}

final class BestSellerInitial extends BestSellerState {}

final class BestSellerLoading extends BestSellerState {}

final class BestSellerSuccess extends BestSellerState {
  final List<BookModel> booksList;
  BestSellerSuccess({required this.booksList});
}

final class BestSellerFailure extends BestSellerState {
  final String errorMessage;
  BestSellerFailure({required this.errorMessage});
}
