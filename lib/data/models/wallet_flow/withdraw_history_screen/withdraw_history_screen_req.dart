class WithdrawHistoryScreenReq {
  String? consumerId;
  String? authKey;

  WithdrawHistoryScreenReq({this.consumerId, this.authKey});

  WithdrawHistoryScreenReq.fromJson(Map<String, dynamic> json) {
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
