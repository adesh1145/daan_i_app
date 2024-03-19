class BankDetailUpdateResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  BankDetailUpdateResp({this.result, this.status, this.message, this.jSONData});

  BankDetailUpdateResp.fromJson(Map<String, dynamic> json) {
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
  String? message;

  JSONData({this.consumerId, this.message});

  JSONData.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['message'] = this.message;
    return data;
  }
}
