class LabTestSelectPatientReq {
  String? userId;
  String? patientId;
  String? auth;

  LabTestSelectPatientReq({this.userId, this.patientId, this.auth});

  LabTestSelectPatientReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    patientId = json['patient_id'];
    auth = json['auth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['patient_id'] = this.patientId;
    data['auth'] = this.auth;
    return data;
  }
}
