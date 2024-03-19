class HealthCardDashboardBuyReq {
  String? customerId;
  String? languageId;
  String? cardType;
  String? authKey;

  HealthCardDashboardBuyReq(
      {this.customerId, this.languageId, this.cardType, this.authKey});

  HealthCardDashboardBuyReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    languageId = json['language_id'];
    cardType = json['card_type'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['language_id'] = this.languageId;
    data['card_type'] = this.cardType;
    data['auth_key'] = this.authKey;
    return data;
  }
}
