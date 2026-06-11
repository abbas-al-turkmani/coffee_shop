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
              '0Coffe Mocha Coffe Mocha Coffe Mocha Coffe Mocha Coffe Mocha Coffe Mocha Coffe Mocha Coffe Mocha Coffe Mocha Coffe Mocha1',
          ratingsNum: 230,
          price: 4.53,
          rating: 4.8,
          image: Assets.images.a2.image(),
        ),
        ProductModule(
          name: 'Coffe Mocha',
          type: 'Deep Foam',
          discription: '',
          ratingsNum: 230,
          price: 4.53,
          rating: 4.8,
          image: Assets.images.a2.image(),
        ),
        ProductModule(
          name: 'Coffe Mocha',
          type: 'Deep Foam',
          discription: '',
          ratingsNum: 230,
          price: 4.53,
          rating: 4.8,
          image: Assets.images.a2.image(),
        ),
        ProductModule(
          name: 'Coffe Mocha',
          type: 'Deep Foam',
          discription: '',
          ratingsNum: 230,
          price: 4.53,
          rating: 4.8,
          image: Assets.images.a2.image(),
        ),
        ProductModule(
          name: 'Coffe Mocha',
          type: 'Deep Foam',
          discription: '',
          ratingsNum: 230,
          price: 4.53,
          rating: 4.8,
          image: Assets.images.a2.image(),
        ),
        ProductModule(
          name: 'Coffe Mocha',
          type: 'Deep Foam',
          discription: '',
          ratingsNum: 230,
          price: 4.53,
          rating: 4.8,
          image: Assets.images.a2.image(),
        ),
      ]),
    );
  }
}
