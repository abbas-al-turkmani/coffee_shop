import 'dart:convert';

class UserAddress {
  final String address;
  final String addressLine;

  UserAddress({required this.address, required this.addressLine});

  UserAddress copyWith({String? address, String? addressLine}) {
    return UserAddress(
      address: address ?? this.address,
      addressLine: addressLine ?? this.addressLine,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': address, 'addressLine': addressLine};
  }

  factory UserAddress.fromMap(Map<String, dynamic> map) {
    return UserAddress(
      address: map['address'] as String,
      addressLine: map['addressLine'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAddress.fromJson(String source) =>
      UserAddress.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'UserAddress(address: $address, addressLine: $addressLine)';

  @override
  bool operator ==(covariant UserAddress other) {
    if (identical(this, other)) return true;

    return other.address == address && other.addressLine == addressLine;
  }

  @override
  int get hashCode => address.hashCode ^ addressLine.hashCode;
}
