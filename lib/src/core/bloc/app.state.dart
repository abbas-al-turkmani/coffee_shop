import 'package:coffee_shop/src/features/onbording/modules/user_info.module.dart';

class AppState {
  UserInfoModule? userInfo;
  bool userLoggedin;

  AppState({this.userInfo, this.userLoggedin = false});

  AppState copyWith({UserInfoModule? userInfo, bool? userLoggedin}) {
    return AppState(
      userInfo: userInfo ?? this.userInfo,
      userLoggedin: userLoggedin ?? this.userLoggedin,
    );
  }
}
