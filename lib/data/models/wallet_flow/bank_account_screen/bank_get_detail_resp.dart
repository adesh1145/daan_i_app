class BankGetDetailResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  BankGetDetailResp({this.result, this.status, this.message, this.jSONData});

  BankGetDetailResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    jSONData = json['JSONData'] != null
        ? new JSONData.fromJson(json['JSONData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.toJson();
    }
    return data;
  }
}

class JSONData {
  ConsumerBaData? consumerBaData;

  JSONData({this.consumerBaData});

  JSONData.fromJson(Map<String, dynamic> json) {
    consumerBaData = json['consumer_ba_data'] != null
        ? new ConsumerBaData.fromJson(json['consumer_ba_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.consumerBaData != null) {
      data['consumer_ba_data'] = this.consumerBaData!.toJson();
    }
    return data;
  }
}

class ConsumerBaData {
  String? consumerAccDtlCId;
  String? consumerAccDtlAccNo;
  String? consumerAccDtlIfsc;
  String? consumerAccDtlAccHolder;

  ConsumerBaData(
      {this.consumerAccDtlCId,
      this.consumerAccDtlAccNo,
      this.consumerAccDtlIfsc,
      this.consumerAccDtlAccHolder});

  ConsumerBaData.fromJson(Map<String, dynamic> json) {
    consumerAccDtlCId = json['consumer_acc_dtl_c_id'];
    consumerAccDtlAccNo = json['consumer_acc_dtl_acc_no'];
    consumerAccDtlIfsc = json['consumer_acc_dtl_ifsc'];
    consumerAccDtlAccHolder = json['consumer_acc_dtl_acc_holder'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_acc_dtl_c_id'] = this.consumerAccDtlCId;
    data['consumer_acc_dtl_acc_no'] = this.consumerAccDtlAccNo;
    data['consumer_acc_dtl_ifsc'] = this.consumerAccDtlIfsc;
    data['consumer_acc_dtl_acc_holder'] = this.consumerAccDtlAccHolder;
    return data;
  }
}
