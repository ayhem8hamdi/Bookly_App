part of 'best_seller_cubit_cubit.dart';

@immutable
sealed class BestSellerCubitState {}

final class BestSellerCubitInitial extends BestSellerCubitState {}

final class BestSellerCubitLoading extends BestSellerCubitState {}

final class BestSellerCubitFailure extends BestSellerCubitState {
  final String errorMsg;

  BestSellerCubitFailure(this.errorMsg);
}

final class BestSellerCubitSucces extends BestSellerCubitState {
  final List<BookModel> books;

  BestSellerCubitSucces(this.books);
}
