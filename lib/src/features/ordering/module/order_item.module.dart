import 'package:coffee_shop/src/features/home/model/product_module.dart';

class OrderItemModule {
  final ProductModule product;
  final int count;

  OrderItemModule({required this.product, required this.count});
}
