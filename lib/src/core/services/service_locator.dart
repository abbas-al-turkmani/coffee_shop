import 'package:coffee_shop/src/features/home/data/products/products_datasource.dart';
import 'package:coffee_shop/src/features/home/data/products/products_fack_datasource.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/links.dart';
import '../network/app_cancel_tokens.dart';
import '../network/app_dio.dart';
import '../network/general_api.dart';

final getItInstance = GetIt.instance;

void initDependencyInjection() {
  // SharedPreferences
  getItInstance.registerSingletonAsync<SharedPreferences>(
    () async => await SharedPreferences.getInstance(),
  );

  // dio
  getItInstance.registerLazySingleton<Dio>(
    () =>
        Dio(
            BaseOptions(
              baseUrl: dotenv.env[Links.baseUrl]!,
              connectTimeout: Duration(seconds: 30),
              receiveTimeout: Duration(seconds: 30),
              sendTimeout: Duration(seconds: 30),
              responseType: ResponseType.json,
            ),
          )
          ..interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
              responseBody: true,
              error: true,
              compact: true,
              enabled: kDebugMode,
              filter: (options, args) {
                if (options.path.contains('/posts')) return false;

                return !args.isResponse || !args.hasUint8ListData;
              },
            ),
          ),
  );

  //AppDio
  getItInstance.registerLazySingleton<AppDio>(() => AppDio(getItInstance()));

  //GeneralApi
  getItInstance.registerLazySingleton<GeneralApi>(
    () => GeneralApi(appDio: getItInstance()),
  );

  //Cancel tokens
  getItInstance.registerLazySingleton<AppCancelTokens>(() => AppCancelTokens());

  // Data Sources
  getItInstance.registerLazySingleton<ProductsDatasource>(
    () => ProductsFackDatasource(),
  );
}
