class AirPayResp {
  String? result;
  String? status;
  String? message;
  String? text;
  JSONData? jSONData;

  AirPayResp(
      {this.result, this.status, this.message, this.text, this.jSONData});

  AirPayResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    text = json['text'];
    jSONData = json['JSONData'] != null
        ? new JSONData.fromJson(json['JSONData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    data['text'] = this.text;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.toJson();
    }
    return data;
  }
}

class JSONData {
  String? pStatus;
  String? transferAmount;
  String? message;

  JSONData({this.pStatus, this.transferAmount, this.message});

  JSONData.fromJson(Map<String, dynamic> json) {
    pStatus = json['p_Status'];
    transferAmount = json['transfer_amount'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['p_Status'] = this.pStatus;
    data['transfer_amount'] = this.transferAmount;
    data['message'] = this.message;
    return data;
  }
}
