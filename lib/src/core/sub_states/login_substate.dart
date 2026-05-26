import 'package:coffee_shop/src/features/onbording/user_info.module.dart';
import 'package:dartz/dartz.dart';

import '../network/failuer.dart';
import 'substate.dart';

class LoginSubstate extends Substate<UserInfoModule> {
  bool isAuthorized;

  final UserInfoModule? userModel;

  LoginSubstate({
    required super.isLoading,
    required super.error,
    required this.isAuthorized,
    this.userModel,
  });

  factory LoginSubstate.iniState(bool isLoading, bool isAutherized) =>
      LoginSubstate(
        isLoading: isLoading,
        error: Failuer.empty(),
        isAuthorized: isAutherized,
      );

  @override
  LoginSubstate runLoading() =>
      copyWith(isLoading: true, error: Failuer.empty());
  @override
  LoginSubstate stopLoading() => copyWith(isLoading: false);

  @override
  LoginSubstate handleEither(
    Either<Failuer, UserInfoModule> either, {
    void Function()? onLeft,
    void Function(UserInfoModule userModel)? onRight,
  }) => either.fold(
    (l) {
      (onLeft ?? () {}).call();
      return LoginSubstate(isLoading: false, error: l, isAuthorized: false);
    },
    (r) {
      (onRight ?? () {}).call();
      return LoginSubstate(
        isLoading: false,
        error: Failuer.empty(),
        isAuthorized: true,
        userModel: r,
      );
    },
  );

  @override
  LoginSubstate copyWith({
    bool? isAuthorized,
    UserInfoModule? userModel,
    Failuer? error,
    bool? isLoading,
  }) {
    return LoginSubstate(
      isAuthorized: isAuthorized ?? this.isAuthorized,
      userModel: userModel,
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
