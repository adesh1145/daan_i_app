class UpdatePatientDetailResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  UpdatePatientDetailResp(
      {this.result, this.status, this.message, this.jSONData});

  UpdatePatientDetailResp.fromJson(Map<String, dynamic> json) {
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
  PatientUpdatedDetails? patientUpdatedDetails;

  JSONData({this.patientUpdatedDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    patientUpdatedDetails = json['patient_updated_details'] != null
        ? new PatientUpdatedDetails.fromJson(json['patient_updated_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.patientUpdatedDetails != null) {
      data['patient_updated_details'] = this.patientUpdatedDetails!.toJson();
    }
    return data;
  }
}

class PatientUpdatedDetails {
  int? patientId;
  String? patientByCid;
  String? patientBid;
  String? patientName;
  String? patientMobileNo;
  String? patientGender;
  String? patientAadharNo;
  String? patientPanNo;
  String? patientGstNo;
  String? patientAadharBackImage;
  String? patientAadharFrontImage;
  String? patientPanImage;

  PatientUpdatedDetails(
      {this.patientId,
      this.patientByCid,
      this.patientBid,
      this.patientName,
      this.patientMobileNo,
      this.patientGender,
      this.patientAadharNo,
      this.patientPanNo,
      this.patientGstNo,
      this.patientAadharBackImage,
      this.patientAadharFrontImage,
      this.patientPanImage});

  PatientUpdatedDetails.fromJson(Map<String, dynamic> json) {
    patientId = json['patient_id'];
    patientByCid = json['patient_by_cid'];
    patientBid = json['patient_bid'];
    patientName = json['patient_name'];
    patientMobileNo = json['patient_mobile_no'];
    patientGender = json['patient_gender'];
    patientAadharNo = json['patient_aadhar_no'];
    patientPanNo = json['patient_pan_no'];
    patientGstNo = json['patient_gst_no'];
    patientAadharBackImage = json['patient_aadhar_back_image'];
    patientAadharFrontImage = json['patient_aadhar_front_image'];
    patientPanImage = json['patient_pan_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['patient_id'] = this.patientId;
    data['patient_by_cid'] = this.patientByCid;
    data['patient_bid'] = this.patientBid;
    data['patient_name'] = this.patientName;
    data['patient_mobile_no'] = this.patientMobileNo;
    data['patient_gender'] = this.patientGender;
    data['patient_aadhar_no'] = this.patientAadharNo;
    data['patient_pan_no'] = this.patientPanNo;
    data['patient_gst_no'] = this.patientGstNo;
    data['patient_aadhar_back_image'] = this.patientAadharBackImage;
    data['patient_aadhar_front_image'] = this.patientAadharFrontImage;
    data['patient_pan_image'] = this.patientPanImage;
    return data;
  }
}
