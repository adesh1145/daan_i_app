class HealthCardBookingReq {
  String? consumerId;
  String? subscriptionId;
  String? authKey;

  HealthCardBookingReq({this.consumerId, this.subscriptionId, this.authKey});

  HealthCardBookingReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    subscriptionId = json['subscription_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['subscription_id'] = this.subscriptionId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
