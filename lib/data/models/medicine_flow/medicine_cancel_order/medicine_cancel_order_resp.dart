class MediceCancelOrderResp {
  String? result;
  String? status;
  String? message;

  MediceCancelOrderResp({this.result, this.status, this.message});

  MediceCancelOrderResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    return data;
  }
}
