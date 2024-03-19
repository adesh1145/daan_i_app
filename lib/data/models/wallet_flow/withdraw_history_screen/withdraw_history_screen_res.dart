class WithdrawHistoryScreenResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  WithdrawHistoryScreenResp(
      {this.result, this.status, this.message, this.jSONData});

  WithdrawHistoryScreenResp.fromJson(Map<String, dynamic> json) {
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
  String? pendingAmount;
  String? currencySymbol;
  List<RequestList>? requestList;

  JSONData({this.pendingAmount, this.currencySymbol, this.requestList});

  JSONData.fromJson(Map<String, dynamic> json) {
    pendingAmount = json['pending_amount'];
    currencySymbol = json['currency_symbol'];
    if (json['request_list'] != null) {
      requestList = <RequestList>[];
      json['request_list'].forEach((v) {
        requestList!.add(new RequestList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pending_amount'] = this.pendingAmount;
    data['currency_symbol'] = this.currencySymbol;
    if (this.requestList != null) {
      data['request_list'] = this.requestList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RequestList {
  String? consumerId;
  String? amount;
  String? note;
  String? consumerTransectionTime;
  String? status;
  String? statusTxt;
  String? previousAmount;
  String? newAmount;

  RequestList(
      {this.consumerId,
      this.amount,
      this.note,
      this.consumerTransectionTime,
      this.status,
      this.statusTxt,
      this.previousAmount,
      this.newAmount});

  RequestList.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    amount = json['amount'];
    note = json['note'];
    consumerTransectionTime = json['consumer_transection_time'];
    status = json['status'];
    statusTxt = json['status_txt'];
    previousAmount = json['previous_amount'];
    newAmount = json['new_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['amount'] = this.amount;
    data['note'] = this.note;
    data['consumer_transection_time'] = this.consumerTransectionTime;
    data['status'] = this.status;
    data['status_txt'] = this.statusTxt;
    data['previous_amount'] = this.previousAmount;
    data['new_amount'] = this.newAmount;
    return data;
  }
}
