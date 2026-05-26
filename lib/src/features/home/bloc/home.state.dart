// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/src/core/sub_states/loading_list_substate.dart';

import '../model/product_module.dart';

class HomeState {
  final LoadingListSubstate<ProductModule> products;
  HomeState({required this.products});
  factory HomeState.initState() =>
      HomeState(products: LoadingListSubstate.initState());

  HomeState copyWith({LoadingListSubstate<ProductModule>? products}) {
    return HomeState(products: products ?? this.products);
  }
}
