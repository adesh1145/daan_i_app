class HealthBookingOverviewReq {
  String? customerId;
  String? languageId;
  String? subId;
  String? authKey;

  HealthBookingOverviewReq(
      {this.customerId, this.languageId, this.subId, this.authKey});

  HealthBookingOverviewReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    languageId = json['language_id'];
    subId = json['sub_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['language_id'] = this.languageId;
    data['sub_id'] = this.subId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
