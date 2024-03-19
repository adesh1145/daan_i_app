class LabSearchReq {
  String? userId;
  String? searchKey;
  String? cityName;
  String? authKey;

  LabSearchReq({this.userId, this.searchKey, this.cityName, this.authKey});

  LabSearchReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    searchKey = json['searchKey'];
    cityName = json['cityName'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['searchKey'] = this.searchKey;
    data['cityName'] = this.cityName;
    data['auth_key'] = this.authKey;
    return data;
  }
}
