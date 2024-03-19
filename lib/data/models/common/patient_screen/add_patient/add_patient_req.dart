class LabTestAddPatientReq {
  String? userId;
  String? patientName;
  String? patientAg;
  String? patientGender;
  String? mobileNo;
  String? relation;
  String? authKey;

  LabTestAddPatientReq(
      {this.userId,
      this.patientName,
      this.patientAg,
      this.patientGender,
      this.mobileNo,
      this.relation,
      this.authKey});

  LabTestAddPatientReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    patientName = json['patient_name'];
    patientAg = json['patient_ag'];
    patientGender = json['patient_gender'];
    mobileNo = json['mobileNo'];
    relation = json['relation'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['patient_name'] = this.patientName;
    data['patient_ag'] = this.patientAg;
    data['patient_gender'] = this.patientGender;
    data['mobileNo'] = this.mobileNo;
    data['relation'] = this.relation;
    data['auth_key'] = this.authKey;
    return data;
  }
}
