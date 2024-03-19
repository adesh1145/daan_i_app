class CitySearchListReq {
  String? stateName;
  String? searchCityKey;
  String? authKey;

  CitySearchListReq({this.stateName, this.searchCityKey, this.authKey});

  CitySearchListReq.fromJson(Map<String, dynamic> json) {
    stateName = json['state_name'];
    searchCityKey = json['search_city_key'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state_name'] = this.stateName;
    data['search_city_key'] = this.searchCityKey;
    data['auth_key'] = this.authKey;
    return data;
  }
}
