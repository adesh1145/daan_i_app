class LabBookingDetailResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  LabBookingDetailResp({this.result, this.status, this.message, this.jSONData});

  LabBookingDetailResp.fromJson(Map<String, dynamic> json) {
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
  String? msg;
  List<BookingDetails>? bookingDetails;
  List<BookingPtTest>? bookingPtTest;
  List<TestList>? testList;
  List<PatientList>? patientList;

  JSONData(
      {this.msg,
      this.bookingDetails,
      this.bookingPtTest,
      this.testList,
      this.patientList});

  JSONData.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['booking_details'] != null) {
      bookingDetails = <BookingDetails>[];
      json['booking_details'].forEach((v) {
        bookingDetails!.add(new BookingDetails.fromJson(v));
      });
    }
    if (json['booking_pt_test'] != null) {
      bookingPtTest = <BookingPtTest>[];
      json['booking_pt_test'].forEach((v) {
        bookingPtTest!.add(new BookingPtTest.fromJson(v));
      });
    }
    if (json['test_list'] != null) {
      testList = <TestList>[];
      json['test_list'].forEach((v) {
        testList!.add(new TestList.fromJson(v));
      });
    }
    if (json['patient_list'] != null) {
      patientList = <PatientList>[];
      json['patient_list'].forEach((v) {
        patientList!.add(new PatientList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    if (this.bookingDetails != null) {
      data['booking_details'] =
          this.bookingDetails!.map((v) => v.toJson()).toList();
    }
    if (this.bookingPtTest != null) {
      data['booking_pt_test'] =
          this.bookingPtTest!.map((v) => v.toJson()).toList();
    }
    if (this.testList != null) {
      data['test_list'] = this.testList!.map((v) => v.toJson()).toList();
    }
    if (this.patientList != null) {
      data['patient_list'] = this.patientList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BookingDetails {
  String? sampleCollectionStatus;
  String? sampleCollectionStatusTxt;
  String? slotSelectedDate;
  String? slotFrom;
  String? slotTo;
  String? labOrderId;
  String? address;
  String? addressPincode;
  String? addressType;
  String? totalTets;
  String? totalPatients;
  int? orderStatus;
  String? orderStatusTxt;
  String? orderPaymentType;
  String? orderPaymentStatus;
  String? orderPaymentStatusTxt;
  String? orderSampleCollectionStatus;
  String? orderSampleCollectionStatusTxt;
  String? orderTime;
  String? orderSampleCollectionByName;
  String? orderSampleCollectionByMobile;
  String? totalPrice;
  String? totalOfferedPrice;
  String? discountApplied;
  String? couponDiscount;
  String? healthCardDiscount;
  String? healthCardCharge;
  String? collectionAmount;
  String? gstAmount;
  String? cloGstPercentage;
  String? finalPrice;

  BookingDetails(
      {this.sampleCollectionStatus,
      this.sampleCollectionStatusTxt,
      this.slotSelectedDate,
      this.slotFrom,
      this.slotTo,
      this.labOrderId,
      this.address,
      this.addressPincode,
      this.addressType,
      this.totalTets,
      this.totalPatients,
      this.orderStatus,
      this.orderStatusTxt,
      this.orderPaymentType,
      this.orderPaymentStatus,
      this.orderPaymentStatusTxt,
      this.orderSampleCollectionStatus,
      this.orderSampleCollectionStatusTxt,
      this.orderTime,
      this.orderSampleCollectionByName,
      this.orderSampleCollectionByMobile,
      this.totalPrice,
      this.totalOfferedPrice,
      this.discountApplied,
      this.couponDiscount,
      this.healthCardDiscount,
      this.healthCardCharge,
      this.collectionAmount,
      this.gstAmount,
      this.cloGstPercentage,
      this.finalPrice});

  BookingDetails.fromJson(Map<String, dynamic> json) {
    sampleCollectionStatus = json['sample_collection_status'];
    sampleCollectionStatusTxt = json['sample_collection_status_txt'];
    slotSelectedDate = json['slot_selected_date'];
    slotFrom = json['slot_from'];
    slotTo = json['slot_to'];
    labOrderId = json['lab_order_id'];
    address = json['address'];
    addressPincode = json['address_pincode'];
    addressType = json['address_type'];
    totalTets = json['total_tets'];
    totalPatients = json['total_patients'];
    orderStatus = json['order_status'];
    orderStatusTxt = json['order_status_txt'];
    orderPaymentType = json['order_payment_type'];
    orderPaymentStatus = json['order_payment_status'];
    orderPaymentStatusTxt = json['order_payment_status_txt'];
    orderSampleCollectionStatus = json['order_sample_collection_status'];
    orderSampleCollectionStatusTxt = json['order_sample_collection_status_txt'];
    orderTime = json['order_time'];
    orderSampleCollectionByName = json['order_sample_collection_by_name'];
    orderSampleCollectionByMobile = json['order_sample_collection_by_mobile'];
    totalPrice = json['total_price'];
    totalOfferedPrice = json['total_offered_price'];
    discountApplied = json['discount_applied'];
    couponDiscount = json['coupon_discount'];
    healthCardDiscount = json['health_card_discount'];
    healthCardCharge = json['healthCardCharge'];
    collectionAmount = json['collection_amount'];
    gstAmount = json['gst_amount'];
    cloGstPercentage = json['clo_gst_percentage'];
    finalPrice = json['final_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sample_collection_status'] = this.sampleCollectionStatus;
    data['sample_collection_status_txt'] = this.sampleCollectionStatusTxt;
    data['slot_selected_date'] = this.slotSelectedDate;
    data['slot_from'] = this.slotFrom;
    data['slot_to'] = this.slotTo;
    data['lab_order_id'] = this.labOrderId;
    data['address'] = this.address;
    data['address_pincode'] = this.addressPincode;
    data['address_type'] = this.addressType;
    data['total_tets'] = this.totalTets;
    data['total_patients'] = this.totalPatients;
    data['order_status'] = this.orderStatus;
    data['order_status_txt'] = this.orderStatusTxt;
    data['order_payment_type'] = this.orderPaymentType;
    data['order_payment_status'] = this.orderPaymentStatus;
    data['order_payment_status_txt'] = this.orderPaymentStatusTxt;
    data['order_sample_collection_status'] = this.orderSampleCollectionStatus;
    data['order_sample_collection_status_txt'] =
        this.orderSampleCollectionStatusTxt;
    data['order_time'] = this.orderTime;
    data['order_sample_collection_by_name'] = this.orderSampleCollectionByName;
    data['order_sample_collection_by_mobile'] =
        this.orderSampleCollectionByMobile;
    data['total_price'] = this.totalPrice;
    data['total_offered_price'] = this.totalOfferedPrice;
    data['discount_applied'] = this.discountApplied;
    data['coupon_discount'] = this.couponDiscount;
    data['health_card_discount'] = this.healthCardDiscount;
    data['healthCardCharge'] = this.healthCardCharge;
    data['collection_amount'] = this.collectionAmount;
    data['gst_amount'] = this.gstAmount;
    data['clo_gst_percentage'] = this.cloGstPercentage;
    data['final_price'] = this.finalPrice;
    return data;
  }
}

class BookingPtTest {
  String? testName;
  String? ltIncludeTest;
  String? labTestImg;
  String? patientPrice;
  String? patientCalculation;

  BookingPtTest(
      {this.testName,
      this.ltIncludeTest,
      this.labTestImg,
      this.patientPrice,
      this.patientCalculation});

  BookingPtTest.fromJson(Map<String, dynamic> json) {
    testName = json['test_name'];
    ltIncludeTest = json['lt_include_test'];
    labTestImg = json['lab_test_img'];
    patientPrice = json['patient_price'];
    patientCalculation = json['patient_calculation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['test_name'] = this.testName;
    data['lt_include_test'] = this.ltIncludeTest;
    data['lab_test_img'] = this.labTestImg;
    data['patient_price'] = this.patientPrice;
    data['patient_calculation'] = this.patientCalculation;
    return data;
  }
}

class TestList {
  String? testName;
  String? ltIncludeTest;
  String? labTestImg;
  int? totlaPatientPrice;
  String? patientCalculation;
  String? allPatientText;
  List<PtListReportStatus>? ptListReportStatus;

  TestList(
      {this.testName,
      this.ltIncludeTest,
      this.labTestImg,
      this.totlaPatientPrice,
      this.patientCalculation,
      this.allPatientText,
      this.ptListReportStatus});

  TestList.fromJson(Map<String, dynamic> json) {
    testName = json['test_name'];
    ltIncludeTest = json['lt_include_test'];
    labTestImg = json['lab_test_img'];
    totlaPatientPrice = json['totla_patient_price'];
    patientCalculation = json['patient_calculation'];
    allPatientText = json['all_patient_text'];
    if (json['pt_list_report_status'] != null) {
      ptListReportStatus = <PtListReportStatus>[];
      json['pt_list_report_status'].forEach((v) {
        ptListReportStatus!.add(new PtListReportStatus.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['test_name'] = this.testName;
    data['lt_include_test'] = this.ltIncludeTest;
    data['lab_test_img'] = this.labTestImg;
    data['totla_patient_price'] = this.totlaPatientPrice;
    data['patient_calculation'] = this.patientCalculation;
    data['all_patient_text'] = this.allPatientText;
    if (this.ptListReportStatus != null) {
      data['pt_list_report_status'] =
          this.ptListReportStatus!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PtListReportStatus {
  String? labOrderId;
  String? labTestId;
  String? patientName;
  String? patientAge;
  String? patientGender;
  String? patientGenderTxt;
  String? ptUploadReportLink;
  String? reportStatus;
  String? reportStatusTxt;
  String? price;

  PtListReportStatus(
      {this.labOrderId,
      this.labTestId,
      this.patientName,
      this.patientAge,
      this.patientGender,
      this.patientGenderTxt,
      this.ptUploadReportLink,
      this.reportStatus,
      this.reportStatusTxt,
      this.price});

  PtListReportStatus.fromJson(Map<String, dynamic> json) {
    labOrderId = json['lab_order_id'];
    labTestId = json['lab_test_id'];
    patientName = json['patient_name'];
    patientAge = json['patient_age'];
    patientGender = json['patient_gender'];
    patientGenderTxt = json['patient_gender_txt'];
    ptUploadReportLink = json['pt_upload_report_link'];
    reportStatus = json['report_status'];
    reportStatusTxt = json['report_status_txt'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_order_id'] = this.labOrderId;
    data['lab_test_id'] = this.labTestId;
    data['patient_name'] = this.patientName;
    data['patient_age'] = this.patientAge;
    data['patient_gender'] = this.patientGender;
    data['patient_gender_txt'] = this.patientGenderTxt;
    data['pt_upload_report_link'] = this.ptUploadReportLink;
    data['report_status'] = this.reportStatus;
    data['report_status_txt'] = this.reportStatusTxt;
    data['price'] = this.price;
    return data;
  }
}

class PatientList {
  int? customerLabPatientId;
  String? clpLabOrderId;
  String? clpLabTestId;
  String? clpPatientName;
  String? clpPatientAge;
  String? clpPatientGender;
  String? clpPatientRelation;
  String? clpPatientUserId;
  String? clpPtUploadReportLink;
  String? clpPtReportStatus;
  String? clpStatus;

  PatientList(
      {this.customerLabPatientId,
      this.clpLabOrderId,
      this.clpLabTestId,
      this.clpPatientName,
      this.clpPatientAge,
      this.clpPatientGender,
      this.clpPatientRelation,
      this.clpPatientUserId,
      this.clpPtUploadReportLink,
      this.clpPtReportStatus,
      this.clpStatus});

  PatientList.fromJson(Map<String, dynamic> json) {
    customerLabPatientId = json['customer_lab_patient_id'];
    clpLabOrderId = json['clp_lab_order_id'];
    clpLabTestId = json['clp_lab_test_id'];
    clpPatientName = json['clp_patient_name'];
    clpPatientAge = json['clp_patient_age'];
    clpPatientGender = json['clp_patient_gender'];
    clpPatientRelation = json['clp_patient_relation'];
    clpPatientUserId = json['clp_patient_user_id'];
    clpPtUploadReportLink = json['clp_pt_upload_report_link'];
    clpPtReportStatus = json['clp_pt_report_status'];
    clpStatus = json['clp_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_lab_patient_id'] = this.customerLabPatientId;
    data['clp_lab_order_id'] = this.clpLabOrderId;
    data['clp_lab_test_id'] = this.clpLabTestId;
    data['clp_patient_name'] = this.clpPatientName;
    data['clp_patient_age'] = this.clpPatientAge;
    data['clp_patient_gender'] = this.clpPatientGender;
    data['clp_patient_relation'] = this.clpPatientRelation;
    data['clp_patient_user_id'] = this.clpPatientUserId;
    data['clp_pt_upload_report_link'] = this.clpPtUploadReportLink;
    data['clp_pt_report_status'] = this.clpPtReportStatus;
    data['clp_status'] = this.clpStatus;
    return data;
  }
}
