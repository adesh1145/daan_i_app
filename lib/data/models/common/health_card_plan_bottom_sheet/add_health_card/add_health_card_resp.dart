class AddHealthCardResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  AddHealthCardResp({this.result, this.status, this.message, this.jSONData});

  AddHealthCardResp.fromJson(Map<String, dynamic> json) {
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
  String? msg;
  String? status;
  int? subId;

  JSONData({this.msg, this.status, this.subId});

  JSONData.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    status = json['status'];
    subId = json['sub_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['status'] = this.status;
    data['sub_id'] = this.subId;
    return data;
  }
}
