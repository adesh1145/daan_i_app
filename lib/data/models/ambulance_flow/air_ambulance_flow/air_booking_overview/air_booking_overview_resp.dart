class AirEnquiryDetailResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  AirEnquiryDetailResp({this.result, this.status, this.message, this.jSONData});

  AirEnquiryDetailResp.fromJson(Map<String, dynamic> json) {
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
  String? enquaryId;
  String? category;
  String? source;
  String? consumerId;
  String? cName;
  String? cMobile;
  String? pickupAddress;
  String? dropAddress;
  String? pickLat;
  String? pickLong;
  String? dropLat;
  String? dropLong;
  String? duration;
  String? polyline;
  String? schudleTime;
  CategoryDetail? categoryDetail;
  List<PatientDetails>? patientDetails;
  List<AllAttendents>? allAttendents;

  JSONData(
      {this.enquaryId,
      this.category,
      this.source,
      this.consumerId,
      this.cName,
      this.cMobile,
      this.pickupAddress,
      this.dropAddress,
      this.pickLat,
      this.pickLong,
      this.dropLat,
      this.dropLong,
      this.duration,
      this.polyline,
      this.schudleTime,
      this.categoryDetail,
      this.patientDetails,
      this.allAttendents});

  JSONData.fromJson(Map<String, dynamic> json) {
    enquaryId = json['enquary_id'];
    category = json['category'];
    source = json['source'];
    consumerId = json['consumer_id'];
    cName = json['c_name'];
    cMobile = json['c_mobile'];
    pickupAddress = json['pickup_address'];
    dropAddress = json['drop_address'];
    pickLat = json['pick_lat'];
    pickLong = json['pick_long'];
    dropLat = json['drop_lat'];
    dropLong = json['drop_long'];
    duration = json['duration'];
    polyline = json['polyline'];
    schudleTime = json['schudle_time'];
    categoryDetail = json['category_detail'] != null
        ? new CategoryDetail.fromJson(json['category_detail'])
        : null;
    if (json['patient_details'] != null) {
      patientDetails = <PatientDetails>[];
      json['patient_details'].forEach((v) {
        patientDetails!.add(new PatientDetails.fromJson(v));
      });
    }
    if (json['all_attendents'] != null) {
      allAttendents = <AllAttendents>[];
      json['all_attendents'].forEach((v) {
        allAttendents!.add(new AllAttendents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enquary_id'] = this.enquaryId;
    data['category'] = this.category;
    data['source'] = this.source;
    data['consumer_id'] = this.consumerId;
    data['c_name'] = this.cName;
    data['c_mobile'] = this.cMobile;
    data['pickup_address'] = this.pickupAddress;
    data['drop_address'] = this.dropAddress;
    data['pick_lat'] = this.pickLat;
    data['pick_long'] = this.pickLong;
    data['drop_lat'] = this.dropLat;
    data['drop_long'] = this.dropLong;
    data['duration'] = this.duration;
    data['polyline'] = this.polyline;
    data['schudle_time'] = this.schudleTime;
    if (this.categoryDetail != null) {
      data['category_detail'] = this.categoryDetail!.toJson();
    }
    if (this.patientDetails != null) {
      data['patient_details'] =
          this.patientDetails!.map((v) => v.toJson()).toList();
    }
    if (this.allAttendents != null) {
      data['all_attendents'] =
          this.allAttendents!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryDetail {
  String? categoryType;
  String? categoryName;
  String? categoryPrice;
  String? categoryIcon;
  String? includes;
  String? seates;
  String? arrivalTime;
  String? includesTxt;

  CategoryDetail(
      {this.categoryType,
      this.categoryName,
      this.categoryPrice,
      this.categoryIcon,
      this.includes,
      this.seates,
      this.arrivalTime,
      this.includesTxt});

  CategoryDetail.fromJson(Map<String, dynamic> json) {
    categoryType = json['category_type'];
    categoryName = json['category_name'];
    categoryPrice = json['category_price'];
    categoryIcon = json['category_icon'];
    includes = json['includes'];
    seates = json['seates'];
    arrivalTime = json['arrival_time'];
    includesTxt = json['includes_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_type'] = this.categoryType;
    data['category_name'] = this.categoryName;
    data['category_price'] = this.categoryPrice;
    data['category_icon'] = this.categoryIcon;
    data['includes'] = this.includes;
    data['seates'] = this.seates;
    data['arrival_time'] = this.arrivalTime;
    data['includes_txt'] = this.includesTxt;
    return data;
  }
}

class PatientDetails {
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
  String? patientGstNo;

  PatientDetails(
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
      this.patientGstNo});

  PatientDetails.fromJson(Map<String, dynamic> json) {
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
    data['patient_gst_no'] = this.patientGstNo;
    return data;
  }
}

class AllAttendents {
  int? attendentId;
  String? attendentBid;
  String? attendentByCid;
  String? attendentName;
  String? attendentAadharNo;
  String? attendentAadharBackImage;
  String? attendentAadharFrontImage;
  String? attendentCovidReportImage;

  AllAttendents(
      {this.attendentId,
      this.attendentBid,
      this.attendentByCid,
      this.attendentName,
      this.attendentAadharNo,
      this.attendentAadharBackImage,
      this.attendentAadharFrontImage,
      this.attendentCovidReportImage});

  AllAttendents.fromJson(Map<String, dynamic> json) {
    attendentId = json['attendent_id'];
    attendentBid = json['attendent_bid'];
    attendentByCid = json['attendent_by_cid'];
    attendentName = json['attendent_name'];
    attendentAadharNo = json['attendent_aadhar_no'];
    attendentAadharBackImage = json['attendent_aadhar_back_image'];
    attendentAadharFrontImage = json['attendent_aadhar_front_image'];
    attendentCovidReportImage = json['attendent_covid_report_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attendent_id'] = this.attendentId;
    data['attendent_bid'] = this.attendentBid;
    data['attendent_by_cid'] = this.attendentByCid;
    data['attendent_name'] = this.attendentName;
    data['attendent_aadhar_no'] = this.attendentAadharNo;
    data['attendent_aadhar_back_image'] = this.attendentAadharBackImage;
    data['attendent_aadhar_front_image'] = this.attendentAadharFrontImage;
    data['attendent_covid_report_image'] = this.attendentCovidReportImage;
    return data;
  }
}
