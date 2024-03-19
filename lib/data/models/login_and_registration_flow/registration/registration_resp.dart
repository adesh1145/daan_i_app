
class RegistrationResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  RegistrationResp({this.result, this.status, this.message, this.jSONData});

  RegistrationResp.fromJson(Map<String, dynamic> json) {
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
  String? consumerId;
  String? consumerName;
  String? consumerStatus;

  JSONData({this.consumerId, this.consumerName, this.consumerStatus});

  JSONData.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    consumerName = json['consumer_name'];
    consumerStatus = json['consumer_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['consumer_name'] = this.consumerName;
    data['consumer_status'] = this.consumerStatus;
    return data;
  }
}
