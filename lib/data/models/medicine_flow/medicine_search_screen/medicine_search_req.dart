class MedcineSearchReq {
  String? cityName;
  String? userId;
  String? authKey;
  String? searchKey;

  MedcineSearchReq({this.cityName, this.userId, this.authKey, this.searchKey, });

  MedcineSearchReq.fromJson(Map<String, dynamic> json) {
    cityName = json['cityName'];
    userId = json['userId'];
    authKey = json['authKey'];
    searchKey = json['searchKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cityName'] = this.cityName;
    data['userId'] = this.userId;
    data['authKey'] = this.authKey;
    data['searchKey'] = this.searchKey;
    return data;
  }
}
