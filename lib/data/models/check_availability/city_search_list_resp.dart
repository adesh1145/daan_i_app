class CitySearchListResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  CitySearchListResp({this.result, this.status, this.message, this.jSONData});

  CitySearchListResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    if (json['JSONData'] != null) {
      jSONData = <JSONData>[];
      json['JSONData'].forEach((v) {
        jSONData!.add(new JSONData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  String? cityId;
  String? cityName;
  String? cityNameOnly;
  String? cityStateNameOnly;

  JSONData(
      {this.cityId, this.cityName, this.cityNameOnly, this.cityStateNameOnly});

  JSONData.fromJson(Map<String, dynamic> json) {
    cityId = json['city_id'];
    cityName = json['city_name'];
    cityNameOnly = json['city_name_only'];
    cityStateNameOnly = json['city_state_name_only'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city_id'] = this.cityId;
    data['city_name'] = this.cityName;
    data['city_name_only'] = this.cityNameOnly;
    data['city_state_name_only'] = this.cityStateNameOnly;
    return data;
  }
}
