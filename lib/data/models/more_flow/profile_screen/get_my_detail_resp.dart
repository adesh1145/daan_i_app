class GetMyDetailResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  GetMyDetailResp({this.result, this.status, this.message, this.jSONData});

  GetMyDetailResp.fromJson(Map<String, dynamic> json) {
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
  String? id;
  String? mobileNo;
  String? name;
  String? walletAmount;
  String? emailId;
  String? myReferalCode;

  JSONData(
      {this.id,
      this.mobileNo,
      this.name,
      this.walletAmount,
      this.emailId,
      this.myReferalCode});

  JSONData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mobileNo = json['mobile_no'];
    name = json['name'];
    walletAmount = json['wallet_amount'];
    emailId = json['email_id'];
    myReferalCode = json['my_referal_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['mobile_no'] = this.mobileNo;
    data['name'] = this.name;
    data['wallet_amount'] = this.walletAmount;
    data['email_id'] = this.emailId;
    data['my_referal_code'] = this.myReferalCode;
    return data;
  }
}
