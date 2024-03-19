class GetPatientListResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  GetPatientListResp({this.result, this.status, this.message, this.jSONData});

  GetPatientListResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    jSONData = json['JSONData'] != null
        ? new JSONData.fromJson(json['JSONData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.toJson();
    }
    return data;
  }
}

class JSONData {
  CartData? cartData;
  List<PatientList>? patientList;

  JSONData({this.cartData, this.patientList});

  JSONData.fromJson(Map<String, dynamic> json) {
    cartData = json['cartData'] != null
        ? new CartData.fromJson(json['cartData'])
        : null;
    if (json['patientList'] != null) {
      patientList = <PatientList>[];
      json['patientList'].forEach((v) {
        patientList!.add(new PatientList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cartData != null) {
      data['cartData'] = this.cartData!.toJson();
    }
    if (this.patientList != null) {
      data['patientList'] = this.patientList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CartData {
  int? totalItem;
  String? totalPrice;
  String? couponDiscount;
  String? totalOfferedPrice;

  CartData(
      {this.totalItem,
      this.totalPrice,
      this.couponDiscount,
      this.totalOfferedPrice});

  CartData.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
    totalPrice = json['total_price'];
    couponDiscount = json['coupon_discount'];
    totalOfferedPrice = json['total_offered_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_item'] = this.totalItem;
    data['total_price'] = this.totalPrice;
    data['coupon_discount'] = this.couponDiscount;
    data['total_offered_price'] = this.totalOfferedPrice;
    return data;
  }
}

class PatientList {
  int? labPatientId;
  String? labPatientName;
  String? labPatientAge;
  String? labPatientGender;
  String? labPatientMobile;
  int? labPatientRelation;
  String? labPatientUserId;
  String? labPatientStatus;
  String? labPatientAddedTime;

  PatientList(
      {this.labPatientId,
      this.labPatientName,
      this.labPatientAge,
      this.labPatientGender,
      this.labPatientMobile,
      this.labPatientRelation,
      this.labPatientUserId,
      this.labPatientStatus,
      this.labPatientAddedTime});

  PatientList.fromJson(Map<String, dynamic> json) {
    labPatientId = json['lab_patient_id'];
    labPatientName = json['lab_patient_name'];
    labPatientAge = json['lab_patient_age'];
    labPatientGender = json['lab_patient_gender'];
    labPatientMobile = json['lab_patient_mobile'];
    labPatientRelation = json['lab_patient_relation'];
    labPatientUserId = json['lab_patient_user_id'];
    labPatientStatus = json['lab_patient_status'];
    labPatientAddedTime = json['lab_patient_added_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_patient_id'] = this.labPatientId;
    data['lab_patient_name'] = this.labPatientName;
    data['lab_patient_age'] = this.labPatientAge;
    data['lab_patient_gender'] = this.labPatientGender;
    data['lab_patient_mobile'] = this.labPatientMobile;
    data['lab_patient_relation'] = this.labPatientRelation;
    data['lab_patient_user_id'] = this.labPatientUserId;
    data['lab_patient_status'] = this.labPatientStatus;
    data['lab_patient_added_time'] = this.labPatientAddedTime;
    return data;
  }
}
