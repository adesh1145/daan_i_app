class UploadPrescriptionReq {
  String? userId;
  String? labPrescriptionImage;
  String? cityName;
  String? authKey;

  UploadPrescriptionReq(
      {this.userId, this.labPrescriptionImage, this.cityName, this.authKey});

  UploadPrescriptionReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    labPrescriptionImage = json['lab_prescription_image'];
    cityName = json['cityName'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['lab_prescription_image'] = this.labPrescriptionImage;
    data['cityName'] = this.cityName;
    data['auth_key'] = this.authKey;
    return data;
  }
}
