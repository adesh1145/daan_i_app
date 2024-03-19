class RatingResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  RatingResp({this.result, this.status, this.message, this.jSONData});

  RatingResp.fromJson(Map<String, dynamic> json) {
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
  String? consumerName;
  String? message;

  JSONData({this.consumerName, this.message});

  JSONData.fromJson(Map<String, dynamic> json) {
    consumerName = json['consumer_name'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_name'] = this.consumerName;
    data['message'] = this.message;
    return data;
  }
}
