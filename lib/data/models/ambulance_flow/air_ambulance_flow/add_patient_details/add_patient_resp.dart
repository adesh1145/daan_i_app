class AddPatientResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  AddPatientResp({this.result, this.status, this.message, this.jSONData});

  AddPatientResp.fromJson(Map<String, dynamic> json) {
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
  PatientDetail? patientDetail;

  JSONData({this.patientDetail});

  JSONData.fromJson(Map<String, dynamic> json) {
    patientDetail = json['patient_detail'] != null
        ? new PatientDetail.fromJson(json['patient_detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.patientDetail != null) {
      data['patient_detail'] = this.patientDetail!.toJson();
    }
    return data;
  }
}

class PatientDetail {
  String? patientBid;
  String? patientByCid;
  String? patientName;
  String? patientMobileNo;
  String? patientGender;
  String? patientAadharNo;
  String? patientAadharBackImage;
  String? patientAadharFrontImage;
  String? patientPanNo;
  String? patientPanImage;
  String? patientGstNo;
  String? patientTransferSlip;
  int? patientId;

  PatientDetail(
      {this.patientBid,
      this.patientByCid,
      this.patientName,
      this.patientMobileNo,
      this.patientGender,
      this.patientAadharNo,
      this.patientAadharBackImage,
      this.patientAadharFrontImage,
      this.patientPanNo,
      this.patientPanImage,
      this.patientGstNo,
      this.patientTransferSlip,
      this.patientId});

  PatientDetail.fromJson(Map<String, dynamic> json) {
    patientBid = json['patient_bid'];
    patientByCid = json['patient_by_cid'];
    patientName = json['patient_name'];
    patientMobileNo = json['patient_mobile_no'];
    patientGender = json['patient_gender'];
    patientAadharNo = json['patient_aadhar_no'];
    patientAadharBackImage = json['patient_aadhar_back_image'];
    patientAadharFrontImage = json['patient_aadhar_front_image'];
    patientPanNo = json['patient_pan_no'];
    patientPanImage = json['patient_pan_image'];
    patientGstNo = json['patient_gst_no'];
    patientTransferSlip = json['patient_transfer_slip'];
    patientId = json['patient_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['patient_bid'] = this.patientBid;
    data['patient_by_cid'] = this.patientByCid;
    data['patient_name'] = this.patientName;
    data['patient_mobile_no'] = this.patientMobileNo;
    data['patient_gender'] = this.patientGender;
    data['patient_aadhar_no'] = this.patientAadharNo;
    data['patient_aadhar_back_image'] = this.patientAadharBackImage;
    data['patient_aadhar_front_image'] = this.patientAadharFrontImage;
    data['patient_pan_no'] = this.patientPanNo;
    data['patient_pan_image'] = this.patientPanImage;
    data['patient_gst_no'] = this.patientGstNo;
    data['patient_transfer_slip'] = this.patientTransferSlip;
    data['patient_id'] = this.patientId;
    return data;
  }
}
