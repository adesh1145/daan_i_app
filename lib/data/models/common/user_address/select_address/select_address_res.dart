class SelectAddressRes {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  SelectAddressRes({this.result, this.status, this.message, this.jSONData});

  SelectAddressRes.fromJson(Map<String, dynamic> json) {
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
  String? result;
  String? status;
  String? msg;

  JSONData({this.result, this.status, this.msg});

  JSONData.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['msg'] = this.msg;
    return data;
  }
}
