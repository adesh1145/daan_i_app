class PreviousPrescriptionResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  PreviousPrescriptionResp(
      {this.result, this.status, this.message, this.jSONData});

  PreviousPrescriptionResp.fromJson(Map<String, dynamic> json) {
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
  String? prescriptionOrderId;
  List<PrescriptionOrderImages>? prescriptionOrderImages;
  int? prescriptionOrderDetails;

  JSONData(
      {this.prescriptionOrderId,
      this.prescriptionOrderImages,
      this.prescriptionOrderDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    prescriptionOrderId = json['prescription_order_id'];
    if (json['prescription_order_images'] != null) {
      prescriptionOrderImages = <PrescriptionOrderImages>[];
      json['prescription_order_images'].forEach((v) {
        prescriptionOrderImages!.add(new PrescriptionOrderImages.fromJson(v));
      });
    }
    prescriptionOrderDetails = json['prescription_order_details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['prescription_order_id'] = this.prescriptionOrderId;
    if (this.prescriptionOrderImages != null) {
      data['prescription_order_images'] =
          this.prescriptionOrderImages!.map((v) => v.toJson()).toList();
    }
    data['prescription_order_details'] = this.prescriptionOrderDetails;
    return data;
  }
}

class PrescriptionOrderImages {
  int? customerPrescriptionOrderId;
  String? cpoUserId;
  String? cpoImage;
  String? cpoLocation;
  String? cpoPincode;
  String? cpoCityId;
  String? cpoName;
  String? cpoContact;
  String? cpoTime;
  int? cpoStatus;
  String? cpConformOrderId;
  String? cpoLabId;
  int? cityId;
  String? cityName;
  int? cityStatus;
  int? cityPopularStatus;
  int? cityServiceStatus;
  int? cityState;
  int? cityDivision;
  int? cityDistrict;
  String? policeVerification;

  PrescriptionOrderImages(
      {this.customerPrescriptionOrderId,
      this.cpoUserId,
      this.cpoImage,
      this.cpoLocation,
      this.cpoPincode,
      this.cpoCityId,
      this.cpoName,
      this.cpoContact,
      this.cpoTime,
      this.cpoStatus,
      this.cpConformOrderId,
      this.cpoLabId,
      this.cityId,
      this.cityName,
      this.cityStatus,
      this.cityPopularStatus,
      this.cityServiceStatus,
      this.cityState,
      this.cityDivision,
      this.cityDistrict,
      this.policeVerification});

  PrescriptionOrderImages.fromJson(Map<String, dynamic> json) {
    customerPrescriptionOrderId = json['customer_prescription_order_id'];
    cpoUserId = json['cpo_user_id'];
    cpoImage = json['cpo_image'];
    cpoLocation = json['cpo_location'];
    cpoPincode = json['cpo_pincode'];
    cpoCityId = json['cpo_city_id'];
    cpoName = json['cpo_name'];
    cpoContact = json['cpo_contact'];
    cpoTime = json['cpo_time'];
    cpoStatus = json['cpo_status'];
    cpConformOrderId = json['cp_conform_order_id'];
    cpoLabId = json['cpo_lab_id'];
    cityId = json['city_id'];
    cityName = json['city_name'];
    cityStatus = json['city_status'];
    cityPopularStatus = json['city_popular_status'];
    cityServiceStatus = json['city_service_status'];
    cityState = json['city_state'];
    cityDivision = json['city_division'];
    cityDistrict = json['city_district'];
    policeVerification = json['police_verification'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_prescription_order_id'] = this.customerPrescriptionOrderId;
    data['cpo_user_id'] = this.cpoUserId;
    data['cpo_image'] = this.cpoImage;
    data['cpo_location'] = this.cpoLocation;
    data['cpo_pincode'] = this.cpoPincode;
    data['cpo_city_id'] = this.cpoCityId;
    data['cpo_name'] = this.cpoName;
    data['cpo_contact'] = this.cpoContact;
    data['cpo_time'] = this.cpoTime;
    data['cpo_status'] = this.cpoStatus;
    data['cp_conform_order_id'] = this.cpConformOrderId;
    data['cpo_lab_id'] = this.cpoLabId;
    data['city_id'] = this.cityId;
    data['city_name'] = this.cityName;
    data['city_status'] = this.cityStatus;
    data['city_popular_status'] = this.cityPopularStatus;
    data['city_service_status'] = this.cityServiceStatus;
    data['city_state'] = this.cityState;
    data['city_division'] = this.cityDivision;
    data['city_district'] = this.cityDistrict;
    data['police_verification'] = this.policeVerification;
    return data;
  }
}
