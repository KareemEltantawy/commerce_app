import 'package:commerce_app/features/product_details/product_datails_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsStates>{

  ProductDetailsCubit() : super(ProductDetailsInitialState());

  static ProductDetailsCubit get(context) => BlocProvider.of(context);

  int counter = 1;

  void plus(){
    counter++;
    emit(ProductDetailsPlusState());
  }

  void minus(){
    counter--;
    emit(ProductDetailsMinusState());
  }

  int categoryIndex = 0;
  void changeCategory(int index){
    categoryIndex = index;
    emit(ProductDetailsChangeCategoryState());
  }

}