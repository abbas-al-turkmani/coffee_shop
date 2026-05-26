import 'package:coffee_shop/src/core/network/failuer.dart';
import 'package:coffee_shop/src/features/home/model/product_module.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsDatasource {
  Future<Either<Failuer, List<ProductModule>>> getAll();
}
