class LabBookingOverViewResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  LabBookingOverViewResp(
      {this.result, this.status, this.message, this.jSONData});

  LabBookingOverViewResp.fromJson(Map<String, dynamic> json) {
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
  BookingDetails? bookingDetails;
  TimeSlotDetaikls? timeSlotDetaikls;
  List<TestNPatient>? testNPatient;
  PaymentDetails? paymentDetails;
  List<PrescriptionData>? prescriptionData;
  List<SlotData>? slotData;
  JSONData(
      {this.prescriptionData,
      this.bookingDetails,
      this.timeSlotDetaikls,
      this.testNPatient,
      this.slotData,
      this.paymentDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['slotData'] != null) {
      slotData = <SlotData>[];
      json['slotData'].forEach((v) {
        slotData!.add(new SlotData.fromJson(v));
      });
    }
    bookingDetails = json['booking_details'] != null
        ? new BookingDetails.fromJson(json['booking_details'])
        : null;
    timeSlotDetaikls = json['time_slot_detaikls'] != null
        ? new TimeSlotDetaikls.fromJson(json['time_slot_detaikls'])
        : null;
    if (json['test_n_patient'] != null) {
      testNPatient = <TestNPatient>[];
      json['test_n_patient'].forEach((v) {
        testNPatient!.add(new TestNPatient.fromJson(v));
      });
    }
    paymentDetails = json['payment_details'] != null
        ? new PaymentDetails.fromJson(json['payment_details'])
        : null;
    if (json['prescriptionData'] != null) {
      prescriptionData = <PrescriptionData>[];
      json['prescriptionData'].forEach((v) {
        prescriptionData!.add(new PrescriptionData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bookingDetails != null) {
      data['booking_details'] = this.bookingDetails!.toJson();
    }
    if (this.timeSlotDetaikls != null) {
      data['time_slot_detaikls'] = this.timeSlotDetaikls!.toJson();
    }
    if (this.testNPatient != null) {
      data['test_n_patient'] =
          this.testNPatient!.map((v) => v.toJson()).toList();
    }
    if (this.paymentDetails != null) {
      data['payment_details'] = this.paymentDetails!.toJson();
    }
    if (this.prescriptionData != null) {
      data['prescriptionData'] =
          this.prescriptionData!.map((v) => v.toJson()).toList();
    }
    if (this.slotData != null) {
      data['slotData'] = this.slotData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SlotData {
  String? from;
  String? to;
  String? price;

  SlotData({this.from, this.to, this.price});

  SlotData.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    data['price'] = this.price;
    return data;
  }
}

class BookingDetails {
  String? address;
  String? addressPincde;
  String? addressType;
  String? userName;
  String? userContactNo;
  String? userCityName;
  String? addressDetailStatus;

  BookingDetails(
      {this.address,
      this.addressPincde,
      this.addressType,
      this.userName,
      this.userContactNo,
      this.userCityName,
      this.addressDetailStatus});

  BookingDetails.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    addressPincde = json['address_pincde'];
    addressType = json['address_type'];
    userName = json['user_name'];
    userContactNo = json['user_contact_no'];
    userCityName = json['ua_city_name'];
    addressDetailStatus = json['address_detail_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['address_pincde'] = this.addressPincde;
    data['address_type'] = this.addressType;
    data['user_name'] = this.userName;
    data['user_contact_no'] = this.userContactNo;
    data['address_detail_status'] = this.addressDetailStatus;
    data['ua_city_name'] = this.userCityName;
    return data;
  }
}

class TimeSlotDetaikls {
  String? timeSlotStatus;
  String? selectedDate;
  String? fromTime;
  String? toTime;

  TimeSlotDetaikls(
      {this.timeSlotStatus, this.selectedDate, this.fromTime, this.toTime});

  TimeSlotDetaikls.fromJson(Map<String, dynamic> json) {
    timeSlotStatus = json['time_slot_status'];
    selectedDate = json['selected_date'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time_slot_status'] = this.timeSlotStatus;
    data['selected_date'] = this.selectedDate;
    data['from_time'] = this.fromTime;
    data['to_time'] = this.toTime;
    return data;
  }
}

class TestNPatient {
  String? addToCartLabId;
  String? testName;
  String? testImage;
  String? testId;
  String? includeTest;
  String? singlePrice;
  String? actualPrice;
  int? countPatient;
  String? countPatientTxt;
  String? totalRateOfAllPt;
  String? listText;

  TestNPatient(
      {this.addToCartLabId,
      this.testName,
      this.testImage,
      this.testId,
      this.includeTest,
      this.singlePrice,
      this.actualPrice,
      this.countPatient,
      this.countPatientTxt,
      this.totalRateOfAllPt,
      this.listText});

  TestNPatient.fromJson(Map<String, dynamic> json) {
    addToCartLabId = json['add_to_cart_lab_id'];
    testName = json['test_name'];
    testImage = json['test_image'];
    testId = json['test_id'];
    includeTest = json['include_test'];
    singlePrice = json['single_price'];
    actualPrice = json['actual_price'];
    countPatient = json['count_patient'];
    countPatientTxt = json['count_patient_txt'];
    totalRateOfAllPt = json['total_rate_of_all_pt'];
    listText = json['list_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['add_to_cart_lab_id'] = this.addToCartLabId;
    data['test_name'] = this.testName;
    data['test_image'] = this.testImage;
    data['test_id'] = this.testId;
    data['include_test'] = this.includeTest;
    data['single_price'] = this.singlePrice;
    data['actual_price'] = this.actualPrice;
    data['count_patient'] = this.countPatient;
    data['count_patient_txt'] = this.countPatientTxt;
    data['total_rate_of_all_pt'] = this.totalRateOfAllPt;
    data['list_text'] = this.listText;
    return data;
  }
}

class PaymentDetails {
  int? totalItem;
  String? currencySymbol;
  String? totalPrice;
  String? totalOfferedPrice;
  String? discountApplied;
  List<CouponData>? couponData;
  String? couponDiscount;
  String? healthCardDiscount;
  String? healthCardCharge;
  List<HealthCardDetails>? healthCardDetails;
  String? collectionAmount;
  String? gstAmountPercentage;
  String? gstAmount;
  String? toBePay;
  String? countMsg;

  PaymentDetails(
      {this.totalItem,
      this.currencySymbol,
      this.totalPrice,
      this.totalOfferedPrice,
      this.discountApplied,
      this.couponData,
      this.couponDiscount,
      this.healthCardDiscount,
      this.healthCardCharge,
      this.healthCardDetails,
      this.collectionAmount,
      this.gstAmountPercentage,
      this.gstAmount,
      this.toBePay,
      this.countMsg});

  PaymentDetails.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
    currencySymbol = json['currency_symbol'];
    totalPrice = json['total_price'];
    totalOfferedPrice = json['total_offered_price'];
    discountApplied = json['discount_applied'];
    if (json['coupon_data'] != null) {
      couponData = <CouponData>[];
      json['coupon_data'].forEach((v) {
        couponData!.add(new CouponData.fromJson(v));
      });
    }
    couponDiscount = json['coupon_discount'];
    healthCardDiscount = json['health_card_discount'];
    healthCardCharge = json['healthCardCharge'];
    if (json['healthCardDetails'] != null) {
      healthCardDetails = <HealthCardDetails>[];
      json['healthCardDetails'].forEach((v) {
        healthCardDetails!.add(new HealthCardDetails.fromJson(v));
      });
    }
    collectionAmount = json['collection_amount'];
    gstAmountPercentage = json['gst_amount_percentage'];
    gstAmount = json['gst_amount'];
    toBePay = json['to_be_pay'];
    countMsg = json['count_msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_item'] = this.totalItem;
    data['currency_symbol'] = this.currencySymbol;
    data['total_price'] = this.totalPrice;
    data['total_offered_price'] = this.totalOfferedPrice;
    data['discount_applied'] = this.discountApplied;
    if (this.couponData != null) {
      data['coupon_data'] = this.couponData!.map((v) => v.toJson()).toList();
    }
    data['coupon_discount'] = this.couponDiscount;
    data['health_card_discount'] = this.healthCardDiscount;
    data['healthCardCharge'] = this.healthCardCharge;
    if (this.healthCardDetails != null) {
      data['healthCardDetails'] =
          this.healthCardDetails!.map((v) => v.toJson()).toList();
    }
    data['collection_amount'] = this.collectionAmount;
    data['gst_amount_percentage'] = this.gstAmountPercentage;
    data['gst_amount'] = this.gstAmount;
    data['to_be_pay'] = this.toBePay;
    data['count_msg'] = this.countMsg;
    return data;
  }
}

class CouponData {
  int? couponId;
  String? couponCode;
  String? description;
  int? minimunCartValue;
  int? maximumDiscountValue;
  String? percentageDiscount;
  String? fixedAmountDiscount;

  CouponData(
      {this.couponId,
      this.couponCode,
      this.description,
      this.minimunCartValue,
      this.maximumDiscountValue,
      this.percentageDiscount,
      this.fixedAmountDiscount});

  CouponData.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    couponCode = json['couponCode'];
    description = json['description'];
    minimunCartValue = json['minimunCartValue'];
    maximumDiscountValue = json['maximumDiscountValue'];
    percentageDiscount = json['percentageDiscount'];
    fixedAmountDiscount = json['fixedAmountDiscount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['couponId'] = this.couponId;
    data['couponCode'] = this.couponCode;
    data['description'] = this.description;
    data['minimunCartValue'] = this.minimunCartValue;
    data['maximumDiscountValue'] = this.maximumDiscountValue;
    data['percentageDiscount'] = this.percentageDiscount;
    data['fixedAmountDiscount'] = this.fixedAmountDiscount;
    return data;
  }
}

class HealthCardDetails {
  int? healthCardSubscriptionId;
  String? healthCardSubscriptionCid;
  String? healthCardSubscriptionPlanId;
  String? healthCardSubscriptionCardNo;
  String? healthCardSubscriptionName;
  String? healthCardSubscriptionLastName;
  String? healthCardSubscriptionMobileNo;
  String? healthCardSubscriptionGender;
  String? healthCardSubscriptionIssueDate;
  String? healthCardSubscriptionExpDate;
  String? healthCardSubscriptionAddedTimeUnx;
  int? healthCardSubscriptionStatus;
  int? healthCardPlanId;
  String? healthCardPlanCardType;
  String? healthCardPlanDuration;
  String? healthCardPlanDurationDays;
  String? healthCardPlanMrp;
  String? healthCardPlanOfferRate;
  int? healthCardPlanLabOfferRate;
  String? healthCardPlanAddedTime;
  int? healthCardPlanStatus;

  HealthCardDetails(
      {this.healthCardSubscriptionId,
      this.healthCardSubscriptionCid,
      this.healthCardSubscriptionPlanId,
      this.healthCardSubscriptionCardNo,
      this.healthCardSubscriptionName,
      this.healthCardSubscriptionLastName,
      this.healthCardSubscriptionMobileNo,
      this.healthCardSubscriptionGender,
      this.healthCardSubscriptionIssueDate,
      this.healthCardSubscriptionExpDate,
      this.healthCardSubscriptionAddedTimeUnx,
      this.healthCardSubscriptionStatus,
      this.healthCardPlanId,
      this.healthCardPlanCardType,
      this.healthCardPlanDuration,
      this.healthCardPlanDurationDays,
      this.healthCardPlanMrp,
      this.healthCardPlanOfferRate,
      this.healthCardPlanLabOfferRate,
      this.healthCardPlanAddedTime,
      this.healthCardPlanStatus});

  HealthCardDetails.fromJson(Map<String, dynamic> json) {
    healthCardSubscriptionId = json['health_card_subscription_id'];
    healthCardSubscriptionCid = json['health_card_subscription_cid'];
    healthCardSubscriptionPlanId = json['health_card_subscription_plan_id'];
    healthCardSubscriptionCardNo = json['health_card_subscription_card_no'];
    healthCardSubscriptionName = json['health_card_subscription_name'];
    healthCardSubscriptionLastName = json['health_card_subscription_last_name'];
    healthCardSubscriptionMobileNo = json['health_card_subscription_mobile_no'];
    healthCardSubscriptionGender = json['health_card_subscription_gender'];
    healthCardSubscriptionIssueDate =
        json['health_card_subscription_issue_date'];
    healthCardSubscriptionExpDate = json['health_card_subscription_exp_date'];
    healthCardSubscriptionAddedTimeUnx =
        json['health_card_subscription_added_time_unx'];
    healthCardSubscriptionStatus = json['health_card_subscription_status'];
    healthCardPlanId = json['health_card_plan_id'];
    healthCardPlanCardType = json['health_card_plan_card_type'];
    healthCardPlanDuration = json['health_card_plan_duration'];
    healthCardPlanDurationDays = json['health_card_plan_duration_days'];
    healthCardPlanMrp = json['health_card_plan_mrp'];
    healthCardPlanOfferRate = json['health_card_plan_offer_rate'];
    healthCardPlanLabOfferRate = json['health_card_plan_lab_offer_rate'];
    healthCardPlanAddedTime = json['health_card_plan_added_time'];
    healthCardPlanStatus = json['health_card_plan_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['health_card_subscription_id'] = this.healthCardSubscriptionId;
    data['health_card_subscription_cid'] = this.healthCardSubscriptionCid;
    data['health_card_subscription_plan_id'] =
        this.healthCardSubscriptionPlanId;
    data['health_card_subscription_card_no'] =
        this.healthCardSubscriptionCardNo;
    data['health_card_subscription_name'] = this.healthCardSubscriptionName;
    data['health_card_subscription_last_name'] =
        this.healthCardSubscriptionLastName;
    data['health_card_subscription_mobile_no'] =
        this.healthCardSubscriptionMobileNo;
    data['health_card_subscription_gender'] = this.healthCardSubscriptionGender;
    data['health_card_subscription_issue_date'] =
        this.healthCardSubscriptionIssueDate;
    data['health_card_subscription_exp_date'] =
        this.healthCardSubscriptionExpDate;
    data['health_card_subscription_added_time_unx'] =
        this.healthCardSubscriptionAddedTimeUnx;
    data['health_card_subscription_status'] = this.healthCardSubscriptionStatus;
    data['health_card_plan_id'] = this.healthCardPlanId;
    data['health_card_plan_card_type'] = this.healthCardPlanCardType;
    data['health_card_plan_duration'] = this.healthCardPlanDuration;
    data['health_card_plan_duration_days'] = this.healthCardPlanDurationDays;
    data['health_card_plan_mrp'] = this.healthCardPlanMrp;
    data['health_card_plan_offer_rate'] = this.healthCardPlanOfferRate;
    data['health_card_plan_lab_offer_rate'] = this.healthCardPlanLabOfferRate;
    data['health_card_plan_added_time'] = this.healthCardPlanAddedTime;
    data['health_card_plan_status'] = this.healthCardPlanStatus;
    return data;
  }
}

class PrescriptionData {
  String? image;

  PrescriptionData({this.image});

  PrescriptionData.fromJson(Map<String, dynamic> json) {
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Image'] = this.image;
    return data;
  }
}
