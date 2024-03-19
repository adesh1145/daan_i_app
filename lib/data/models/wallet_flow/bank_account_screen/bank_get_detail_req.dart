class BankGetDetailReq {
  String? consumerId;
  String? authKey;

  BankGetDetailReq({this.consumerId, this.authKey});

  BankGetDetailReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
