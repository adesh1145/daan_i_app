class FetchMoneyReq {
  String? consumerId;
  String? requestAmount;
  String? transectionNote;
  String? authKey;

  FetchMoneyReq(
      {this.consumerId,
      this.requestAmount,
      this.transectionNote,
      this.authKey});

  FetchMoneyReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    requestAmount = json['request_amount'];
    transectionNote = json['transection_note'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['request_amount'] = this.requestAmount;
    data['transection_note'] = this.transectionNote;
    data['auth_key'] = this.authKey;
    return data;
  }
}
