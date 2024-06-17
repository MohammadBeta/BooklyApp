import 'package:bookly_application/core/api_service.dart';
import 'package:bookly_application/featuers/home/data/home_repos/home_repo_impl.dart';
import 'package:bookly_application/featuers/home/data/models/book_model/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'best_seller_books_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit() : super(BestSellerInitial());
  final HomeRepoImpl _homeRepoImpl = HomeRepoImpl(apiService: ApiService());
  void getBestSellerBooks() async {
    emit(BestSellerLoading());

    final result = await _homeRepoImpl.fetchBestSellerBooks();

    result.fold(
        (failure) => emit(BestSellerFailure(errorMessage: failure.message)),
        (booksList) {
      emit(BestSellerSuccess(booksList: booksList));
    });
  }
}
