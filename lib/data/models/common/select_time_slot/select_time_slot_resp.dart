class SelectTimeSlotResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  SelectTimeSlotResp({this.result, this.status, this.message, this.jSONData});

  SelectTimeSlotResp.fromJson(Map<String, dynamic> json) {
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
