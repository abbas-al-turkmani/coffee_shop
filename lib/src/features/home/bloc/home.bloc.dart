import 'package:coffee_shop/src/features/home/data/products/products_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc({required this.productsDatasource}) : super(HomeState.initState());

  final ProductsDatasource productsDatasource;

  Future<void> initData() async {
    emit(state.copyWith(products: state.products.runLoading()));

    emit(
      state.copyWith(
        products: state.products.handleEither(
          await productsDatasource.getAll(),
        ),
      ),
    );
  }
}
