class DeletePatientReq {
  String? userId;
  String? patientId;
  String? cityName;
  String? auth;

  DeletePatientReq({this.userId, this.patientId, this.cityName, this.auth});

  DeletePatientReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    patientId = json['patient_id'];
    cityName = json['cityName'];
    auth = json['auth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['patient_id'] = this.patientId;
    data['cityName'] = this.cityName;
    data['auth'] = this.auth;
    return data;
  }
}
