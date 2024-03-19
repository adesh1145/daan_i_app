class CancelRideResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  CancelRideResp({this.result, this.status, this.message, this.jSONData});

  CancelRideResp.fromJson(Map<String, dynamic> json) {
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
  String? message;
  String? status;
  String? statusDevTxt;

  JSONData({this.message, this.status, this.statusDevTxt});

  JSONData.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
    statusDevTxt = json['status_dev_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    data['status_dev_txt'] = this.statusDevTxt;
    return data;
  }
}
