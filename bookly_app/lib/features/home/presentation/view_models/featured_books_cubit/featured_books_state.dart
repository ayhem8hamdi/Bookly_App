part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMsg;

  FeaturedBooksFailure(this.errorMsg);
}

final class FeaturedBooksSucces extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSucces(this.books);
}
