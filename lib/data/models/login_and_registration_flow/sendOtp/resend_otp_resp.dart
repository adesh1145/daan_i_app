class ResendOtpResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  ResendOtpResp({this.result, this.status, this.message, this.jSONData});

  ResendOtpResp.fromJson(Map<String, dynamic> json) {
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
  String? devMsg;
  String? otp;

  JSONData({this.devMsg, this.otp});

  JSONData.fromJson(Map<String, dynamic> json) {
    devMsg = json['dev_msg'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dev_msg'] = this.devMsg;
    data['otp'] = this.otp;
    return data;
  }
}
