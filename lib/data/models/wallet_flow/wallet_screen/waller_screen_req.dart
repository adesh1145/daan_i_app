class WalletScreenReq {
  String? consumerId;
  String? filter;
  String? authKey;

  WalletScreenReq({this.consumerId, this.filter, this.authKey});

  WalletScreenReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    filter = json['filter'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['filter'] = this.filter;
    data['auth_key'] = this.authKey;
    return data;
  }
}
