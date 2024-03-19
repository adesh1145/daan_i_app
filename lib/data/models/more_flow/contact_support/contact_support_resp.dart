class ContactSupportResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  ContactSupportResp({this.result, this.status, this.message, this.jSONData});

  ContactSupportResp.fromJson(Map<String, dynamic> json) {
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
  String? contactNo;
  String? emailId;

  JSONData({this.contactNo, this.emailId});

  JSONData.fromJson(Map<String, dynamic> json) {
    contactNo = json['contact_no'];
    emailId = json['email_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contact_no'] = this.contactNo;
    data['email_id'] = this.emailId;
    return data;
  }
}
