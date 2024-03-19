class PostSendOtpResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  PostSendOtpResp({this.result, this.status, this.message, this.jSONData});

  PostSendOtpResp.fromJson(Map<String, dynamic> json) {
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
  int? consumerId;
  String? consumerName;
  String? mobileNo;
  String? consumerStatus;
  String? authKey;

  JSONData(
      {this.devMsg,
      this.otp,
      this.consumerId,
      this.consumerName,
      this.mobileNo,
      this.consumerStatus,
      this.authKey});

  JSONData.fromJson(Map<String, dynamic> json) {
    devMsg = json['dev_msg'];
    otp = json['otp'];
    consumerId = json['consumer_id'];
    consumerName = json['consumer_name'];
    mobileNo = json['mobile_no'];
    consumerStatus = json['consumer_status'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dev_msg'] = this.devMsg;
    data['otp'] = this.otp;
    data['consumer_id'] = this.consumerId;
    data['consumer_name'] = this.consumerName;
    data['mobile_no'] = this.mobileNo;
    data['consumer_status'] = this.consumerStatus;
    data['auth_key'] = this.authKey;
    return data;
  }
}
