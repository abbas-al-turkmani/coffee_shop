import 'dart:convert';
import 'user_address.module.dart';

class UserInfoModule {
  final String userName;
  final UserAddress address;

  UserInfoModule({required this.userName, required this.address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'userName': userName, 'address': address.toMap()};
  }

  factory UserInfoModule.fromMap(Map<String, dynamic> map) {
    return UserInfoModule(
      userName: map['userName'] as String,
      address: UserAddress.fromJson(map['address']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfoModule.fromJson(String source) =>
      UserInfoModule.fromMap(json.decode(source) as Map<String, dynamic>);
}
