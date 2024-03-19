class PrescriptionListResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  PrescriptionListResp({this.result, this.status, this.message, this.jSONData});

  PrescriptionListResp.fromJson(Map<String, dynamic> json) {
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
  int? cpoId;
  String? cpoImageUrl;
  String? cityName;

  JSONData({this.cpoId, this.cpoImageUrl, this.cityName});

  JSONData.fromJson(Map<String, dynamic> json) {
    cpoId = json['cpo_id'];
    cpoImageUrl = json['cpo_image_url'];
    cityName = json['city_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cpo_id'] = this.cpoId;
    data['cpo_image_url'] = this.cpoImageUrl;
    data['city_name'] = this.cityName;
    return data;
  }
}
