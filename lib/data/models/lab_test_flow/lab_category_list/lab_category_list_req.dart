class CategoryListReq {
  String? consumerId;
  String? type;
  String? authKey;
  String? cityName;

  CategoryListReq({this.consumerId, this.type, this.authKey, this.cityName});

  CategoryListReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    type = json['type'];
    authKey = json['auth_key'];
    cityName = json['cityName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['type'] = this.type;
    data['auth_key'] = this.authKey;
    data['cityName'] = this.cityName;
    return data;
  }
}
