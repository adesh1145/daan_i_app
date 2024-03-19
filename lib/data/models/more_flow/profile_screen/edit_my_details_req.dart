class EditMyDetailReq {
  String? consumerId;
  String? consumerName;
  String? consumerEmailId;
  String? authKey;

  EditMyDetailReq(
      {this.consumerId, this.consumerName, this.consumerEmailId, this.authKey});

  EditMyDetailReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    consumerName = json['consumer_name'];
    consumerEmailId = json['consumer_email_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['consumer_name'] = this.consumerName;
    data['consumer_email_id'] = this.consumerEmailId;
    data['auth_key'] = this.authKey;
    return data;
  }
}

class GetConsumerDetailReq {
  String? consumerId;
  String? authKey;

  GetConsumerDetailReq({this.consumerId, this.authKey});

  GetConsumerDetailReq.fromJson(Map<String, dynamic> json) {
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
