import 'package:coffee_shop/src/features/onbording/modules/user_info.module.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState());

  // final SharedPreferences sharedPreferences;

  void initState() {
    // String userInfoJson = sharedPreferences.getString(Keys.USER_INFO) ?? '';

    // if (userInfoJson.isNotEmpty) {
    //   emit(
    //     state.copyWith(
    //       userInfo: UserInfoModule.fromJson(userInfoJson),
    //       userLoggedin: true,
    //     ),
    //   );
    // }
  }

  void saveUserInfo(UserInfoModule userInfoModule) {
    // sharedPreferences.setString(Keys.USER_INFO, userInfoModule.toJson());
  }
}
