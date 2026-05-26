import 'dart:convert';

class UserInfoModule {
  final String userName;
  final String address;

  UserInfoModule({required this.userName, required this.address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'userName': userName, 'address': address};
  }

  factory UserInfoModule.fromMap(Map<String, dynamic> map) {
    return UserInfoModule(
      userName: map['userName'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfoModule.fromJson(String source) =>
      UserInfoModule.fromMap(json.decode(source) as Map<String, dynamic>);
}
