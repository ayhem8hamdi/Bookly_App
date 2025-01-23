import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:meta/meta.dart';

part 'best_seller_cubit_state.dart';

class BestSellerCubitCubit extends Cubit<BestSellerCubitState> {
  BestSellerCubitCubit() : super(BestSellerCubitInitial());
}
