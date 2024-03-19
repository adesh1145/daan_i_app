class LabTestListReq {
  String? userId;
  String? cityName;
  String? categoryId;
  String? sortBy;
  String? authKey;

  LabTestListReq(
      {this.userId, this.cityName, this.categoryId, this.sortBy, this.authKey});

  LabTestListReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    categoryId = json['categoryId'];
    sortBy = json['sortBy'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['cityName'] = this.cityName;
    data['categoryId'] = this.categoryId;
    data['sortBy'] = this.sortBy;
    data['auth_key'] = this.authKey;
    return data;
  }
}
