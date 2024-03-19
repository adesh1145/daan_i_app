class HealthDashBoardReq {
  String? customerId;
  String? customerLat;
  String? customerLong;
  String? searchCity;
  String? authKey;

  HealthDashBoardReq(
      {this.customerId,
      this.customerLat,
      this.customerLong,
      this.searchCity,
      this.authKey});

  HealthDashBoardReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    customerLat = json['customer_lat'];
    customerLong = json['customer_long'];
    searchCity = json['search_city'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['customer_lat'] = this.customerLat;
    data['customer_long'] = this.customerLong;
    data['search_city'] = this.searchCity;
    data['auth_key'] = this.authKey;
    return data;
  }
}
