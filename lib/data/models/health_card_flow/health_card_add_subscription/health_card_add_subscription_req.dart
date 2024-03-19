class HealthCardAddSubscriptionReq {
  String? customerId;
  String? languageId;
  String? planId;
  String? authKey;

  HealthCardAddSubscriptionReq(
      {this.customerId, this.languageId, this.planId, this.authKey});

  HealthCardAddSubscriptionReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    languageId = json['language_id'];
    planId = json['plan_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['language_id'] = this.languageId;
    data['plan_id'] = this.planId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
