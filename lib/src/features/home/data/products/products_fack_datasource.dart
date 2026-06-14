import 'package:coffee_shop/gen/assets.gen.dart';
import 'package:coffee_shop/src/core/network/failuer.dart';

import 'package:coffee_shop/src/features/home/model/product_module.dart';

import 'package:dartz/dartz.dart';

import 'products_datasource.dart';

class ProductsFackDatasource implements ProductsDatasource {
  @override
  Future<Either<Failuer, List<ProductModule>>> getAll() {
    return Future.delayed(
      Duration(seconds: 5),
      () => right([
        ProductModule(
          name: 'Coffe Mocha',
          type: 'Deep Foam',
          discription:
              'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
          ratingsNum: 230,
          price: 4.53,
          rating: 4.8,
          image: Assets.images.a2.image(),
        ),
        ProductModule(
          name: 'Flat White',
          type: 'Espresso',
          discription: '',
          ratingsNum: 230,
          price: 3.53,
          rating: 4.8,
          image: Assets.images.a3.image(),
        ),
        ProductModule(
          name: 'Mocha Fusi',
          type: 'Ice/Hot',
          discription: '',
          ratingsNum: 230,
          price: 7.53,
          rating: 4.8,
          image: Assets.images.a4.image(),
        ),
        ProductModule(
          name: 'Caffe Panna',
          type: 'Ice/Hot',
          discription: '',
          ratingsNum: 230,
          price: 5.53,
          rating: 4.8,
          image: Assets.images.a5.image(),
        ),
      ]),
    );
  }
}
