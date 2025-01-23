import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

part 'best_seller_cubit_state.dart';

class BestSellerCubitCubit extends Cubit<BestSellerCubitState> {
  BestSellerCubitCubit(this.homeRepo) : super(BestSellerCubitInitial());

  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerCubitLoading());

    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(BestSellerCubitFailure(failure.errorMsg));
    }, (books) {
      emit(BestSellerCubitSucces(books));
    });
  }
}
