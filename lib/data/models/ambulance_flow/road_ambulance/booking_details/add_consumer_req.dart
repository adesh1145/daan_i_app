class AddConsumerReq {
  String? consumerId;
  String? enquaryId;
  String? consumerName;
  String? consumerMobile;
  String? authKey;

  AddConsumerReq(
      {this.consumerId,
        this.enquaryId,
        this.consumerName,
        this.consumerMobile,
        this.authKey});

  AddConsumerReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    enquaryId = json['enquary_id'];
    consumerName = json['consumer_name'];
    consumerMobile = json['consumer_mobile'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['enquary_id'] = this.enquaryId;
    data['consumer_name'] = this.consumerName;
    data['consumer_mobile'] = this.consumerMobile;
    data['auth_key'] = this.authKey;
    return data;
  }
}
