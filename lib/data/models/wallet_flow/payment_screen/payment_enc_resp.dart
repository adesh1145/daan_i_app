class PaymentEncResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  PaymentEncResp({this.result, this.status, this.message, this.jSONData});

  PaymentEncResp.fromJson(Map<String, dynamic> json) {
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
  String? encryptedData;
  String? merchantData;
  String? accessCode;

  JSONData({this.encryptedData, this.merchantData, this.accessCode});

  JSONData.fromJson(Map<String, dynamic> json) {
    encryptedData = json['encrypted_data'];
    merchantData = json['merchant_data'];
    accessCode = json['access_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['encrypted_data'] = this.encryptedData;
    data['merchant_data'] = this.merchantData;
    data['access_code'] = this.accessCode;
    return data;
  }
}
