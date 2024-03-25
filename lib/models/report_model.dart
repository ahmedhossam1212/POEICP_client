// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ReportsModel {
  final String shopName;
  final String shopAddress;
  final String phone;
  final String email;
  final String productType;
  final String price;
  final String payed;
  final String note;
  final String uId;
  final String postImage;
  ReportsModel({
    required this.shopName,
    required this.shopAddress,
    required this.phone,
    required this.email,
    required this.productType,
    required this.price,
    required this.payed,
    required this.note,
    required this.uId,
    required this.postImage,
  });

  ReportsModel copyWith({
    String? shopName,
    String? shopAddress,
    String? phone,
    String? email,
    String? productType,
    String? price,
    String? payed,
    String? note,
    String? uId,
    String? postImage,
  }) {
    return ReportsModel(
      shopName: shopName ?? this.shopName,
      shopAddress: shopAddress ?? this.shopAddress,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      productType: productType ?? this.productType,
      price: price ?? this.price,
      payed: payed ?? this.payed,
      note: note ?? this.note,
      uId: uId ?? this.uId,
      postImage: postImage ?? this.postImage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shopName': shopName,
      'shopAddress': shopAddress,
      'phone': phone,
      'email': email,
      'productType': productType,
      'price': price,
      'payed': payed,
      'note': note,
      'uId': uId,
      'postImage': postImage,
    };
  }

  factory ReportsModel.fromMap(Map<String, dynamic> map) {
    return ReportsModel(
      shopName: map['shopName'] as String,
      shopAddress: map['shopAddress'] as String,
      phone: map['phone'] as String,
      email: map['email'] as String,
      productType: map['productType'] as String,
      price: map['price'] as String,
      payed: map['payed'] as String,
      note: map['note'] as String,
      uId: map['uId'] as String,
      postImage: map['postImage'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ReportsModel.fromJson(String source) =>
      ReportsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReportsModel(shopName: $shopName, shopAddress: $shopAddress, phone: $phone, email: $email, productType: $productType, price: $price, payed: $payed, note: $note, uId: $uId, postImage: $postImage)';
  }

  @override
  bool operator ==(covariant ReportsModel other) {
    if (identical(this, other)) return true;

    return other.shopName == shopName &&
        other.shopAddress == shopAddress &&
        other.phone == phone &&
        other.email == email &&
        other.productType == productType &&
        other.price == price &&
        other.payed == payed &&
        other.note == note &&
        other.uId == uId &&
        other.postImage == postImage;
  }

  @override
  int get hashCode {
    return shopName.hashCode ^
        shopAddress.hashCode ^
        phone.hashCode ^
        email.hashCode ^
        productType.hashCode ^
        price.hashCode ^
        payed.hashCode ^
        note.hashCode ^
        uId.hashCode ^
        postImage.hashCode;
  }
}
