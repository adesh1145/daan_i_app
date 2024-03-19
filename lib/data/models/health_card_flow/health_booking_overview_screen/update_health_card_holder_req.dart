class UpdateHealthCardHolderDetailReq {
  String? subscriptionId;
  String? consumerNameFirst;
  String? consumerNameLast;
  String? consumerMobile;
  String? consumerGender;
  String? authKey;

  UpdateHealthCardHolderDetailReq(
      {this.subscriptionId,
      this.consumerNameFirst,
      this.consumerNameLast,
      this.consumerMobile,
      this.consumerGender,
      this.authKey});

  UpdateHealthCardHolderDetailReq.fromJson(Map<String, dynamic> json) {
    subscriptionId = json['subscription_id'];
    consumerNameFirst = json['consumer_name_first'];
    consumerNameLast = json['consumer_name_last'];
    consumerMobile = json['consumer_mobile'];
    consumerGender = json['consumer_gender'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subscription_id'] = this.subscriptionId;
    data['consumer_name_first'] = this.consumerNameFirst;
    data['consumer_name_last'] = this.consumerNameLast;
    data['consumer_mobile'] = this.consumerMobile;
    data['consumer_gender'] = this.consumerGender;
    data['auth_key'] = this.authKey;
    return data;
  }
}
