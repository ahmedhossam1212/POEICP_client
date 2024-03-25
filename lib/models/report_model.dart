class ReportsModel {
  final String shopName;
  final String shopAddress;
  final String phone;
  final String email;
  final String productType;
  final String price;
  final String payed;
  final String note;
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
      postImage: postImage ?? this.postImage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'shopName': shopName,
      'shopAddress': shopAddress,
      'phone': phone,
      'email': email,
      'productType': productType,
      'price': price,
      'payed': payed,
      'note': note,
      'postImage': postImage,
    };
  }
}
