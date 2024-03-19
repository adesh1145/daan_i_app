class WishlistReq {
  String? consumerId;
  String? hospitalId;
  String? authKey;

  WishlistReq({this.consumerId, this.hospitalId, this.authKey});

  WishlistReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    hospitalId = json['hospital_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['hospital_id'] = this.hospitalId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
