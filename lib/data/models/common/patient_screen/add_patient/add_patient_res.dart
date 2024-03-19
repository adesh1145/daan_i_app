class LabTestAddPatientRes {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  LabTestAddPatientRes({this.result, this.status, this.message, this.jSONData});

  LabTestAddPatientRes.fromJson(Map<String, dynamic> json) {
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
  String? patientId;

  JSONData({this.msg, this.status, this.patientId});

  JSONData.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    status = json['status'];
    patientId = json['patient_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['status'] = this.status;
    data['patient_id'] = this.patientId;
    return data;
  }
}
