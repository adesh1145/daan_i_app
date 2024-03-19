class FinalPrescriptionBookingResp {
  String? result;
  String? status;
  String? message;
  String? conformOrderId;
  List<JSONData>? jSONData;

  FinalPrescriptionBookingResp(
      {this.result,
      this.status,
      this.message,
      this.conformOrderId,
      this.jSONData});

  FinalPrescriptionBookingResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    conformOrderId = json['conform_order_id'];
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
    data['conform_order_id'] = this.conformOrderId;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  String? conformOrderId;
  String? msg;

  JSONData({this.conformOrderId, this.msg});

  JSONData.fromJson(Map<String, dynamic> json) {
    conformOrderId = json['conform_order_id'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['conform_order_id'] = this.conformOrderId;
    data['msg'] = this.msg;
    return data;
  }
}
