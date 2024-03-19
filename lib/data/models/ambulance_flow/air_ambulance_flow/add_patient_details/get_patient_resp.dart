class GetPatientDetailResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  GetPatientDetailResp({this.result, this.status, this.message, this.jSONData});

  GetPatientDetailResp.fromJson(Map<String, dynamic> json) {
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
  int? patientId;
  String? patientBid;
  String? patientName;
  String? patientMobileNo;
  String? patientGender;
  String? patientAadharNo;
  String? patientAadharBackImage;
  String? patientAadharFrontImage;
  String? patientPanNo;
  String? patientPanImage;
  String? dischargeDoc;
  String? patientGstNo;

  JSONData(
      {this.patientId,
      this.patientBid,
      this.patientName,
      this.patientMobileNo,
      this.patientGender,
      this.patientAadharNo,
      this.patientAadharBackImage,
      this.patientAadharFrontImage,
      this.patientPanNo,
      this.patientPanImage,
      this.dischargeDoc,
      this.patientGstNo});

  JSONData.fromJson(Map<String, dynamic> json) {
    patientId = json['patient_id'];
    patientBid = json['patient_bid'];
    patientName = json['patient_name'];
    patientMobileNo = json['patient_mobile_no'];
    patientGender = json['patient_gender'];
    patientAadharNo = json['patient_aadhar_no'];
    patientAadharBackImage = json['patient_aadhar_back_image'];
    patientAadharFrontImage = json['patient_aadhar_front_image'];
    patientPanNo = json['patient_pan_no'];
    patientPanImage = json['patient_pan_image'];
    dischargeDoc = json['discharge_doc'];
    patientGstNo = json['patient_gst_no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['patient_id'] = this.patientId;
    data['patient_bid'] = this.patientBid;
    data['patient_name'] = this.patientName;
    data['patient_mobile_no'] = this.patientMobileNo;
    data['patient_gender'] = this.patientGender;
    data['patient_aadhar_no'] = this.patientAadharNo;
    data['patient_aadhar_back_image'] = this.patientAadharBackImage;
    data['patient_aadhar_front_image'] = this.patientAadharFrontImage;
    data['patient_pan_no'] = this.patientPanNo;
    data['patient_pan_image'] = this.patientPanImage;
    data['discharge_doc'] = this.dischargeDoc;
    data['patient_gst_no'] = this.patientGstNo;
    return data;
  }
}
