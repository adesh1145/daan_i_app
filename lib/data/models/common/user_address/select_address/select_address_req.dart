class SelectAddressReq {
  String? userId;
  String? addressId;
  String? authKey;

  SelectAddressReq({this.userId, this.addressId, this.authKey});

  SelectAddressReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    addressId = json['address_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['address_id'] = this.addressId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
