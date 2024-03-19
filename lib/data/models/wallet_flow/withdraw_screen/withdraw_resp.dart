class FetchMoneyResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  FetchMoneyResp({this.result, this.status, this.message, this.jSONData});

  FetchMoneyResp.fromJson(Map<String, dynamic> json) {
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
  String? transferAmount;
  String? newAmount;

  JSONData({this.consumerId, this.transferAmount, this.newAmount});

  JSONData.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    transferAmount = json['transfer_amount'];
    newAmount = json['new_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['transfer_amount'] = this.transferAmount;
    data['new_amount'] = this.newAmount;
    return data;
  }
}
