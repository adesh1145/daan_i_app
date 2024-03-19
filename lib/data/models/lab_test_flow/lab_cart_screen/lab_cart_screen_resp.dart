class LabCartScreenResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  LabCartScreenResp({this.result, this.status, this.message, this.jSONData});

  LabCartScreenResp.fromJson(Map<String, dynamic> json) {
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
  List<ProposedHealthCard>? proposedHealthCard;
  String? proposedHealthCardDiscount;
  String? title1;
  List<CartDetails>? cartDetails;
  CartData? cartData;
  List<BannerData>? bannerData;
  String? addressDetails;

  JSONData(
      {this.proposedHealthCard,
      this.proposedHealthCardDiscount,
      this.title1,
      this.cartDetails,
      this.cartData,
      this.bannerData,
      this.addressDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    title1 = json['title1'];
    if (json['proposedHealthCard'] != null) {
      proposedHealthCard = <ProposedHealthCard>[];
      json['proposedHealthCard'].forEach((v) {
        proposedHealthCard!.add(new ProposedHealthCard.fromJson(v));
      });
    }
    proposedHealthCardDiscount = json['proposedHealthCardDiscount'];
    if (json['cart_details'] != null) {
      cartDetails = <CartDetails>[];
      json['cart_details'].forEach((v) {
        cartDetails!.add(new CartDetails.fromJson(v));
      });
    }
    cartData = json['cart_data'] != null
        ? new CartData.fromJson(json['cart_data'])
        : null;
    if (json['bannerData'] != null) {
      bannerData = <BannerData>[];
      json['bannerData'].forEach((v) {
        bannerData!.add(new BannerData.fromJson(v));
      });
    }
    addressDetails = json['AddressDetails'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.proposedHealthCard != null) {
      data['proposedHealthCard'] =
          this.proposedHealthCard!.map((v) => v.toJson()).toList();
    }
    data['proposedHealthCardDiscount'] = this.proposedHealthCardDiscount;
    data['title1'] = this.title1;
    if (this.cartDetails != null) {
      data['cart_details'] = this.cartDetails!.map((v) => v.toJson()).toList();
    }
    if (this.cartData != null) {
      data['cart_data'] = this.cartData!.toJson();
    }
    if (this.bannerData != null) {
      data['bannerData'] = this.bannerData!.map((v) => v.toJson()).toList();
    }
    data['AddressDetails'] = this.addressDetails;
    return data;
  }
}

class ProposedHealthCard {
  int? healthCardTypeId;
  String? healthCardTypeName;
  String? healthCardTypeAddedTime;
  String? healthCardTypeStatus;
  int? hcmId;
  int? hcmCardType;
  String? hcmFlow;
  String? hcmStatus;
  int? healthCardPlanId;
  String? healthCardPlanCardType;
  String? healthCardPlanDuration;
  String? healthCardPlanDurationDays;
  String? healthCardPlanMrp;
  String? healthCardPlanOfferRate;
  int? healthCardPlanLabOfferRate;
  int? healthCardPlanMedicineOfferRate;
  String? healthCardPlanAddedTime;
  int? healthCardPlanStatus;

  ProposedHealthCard(
      {this.healthCardTypeId,
      this.healthCardTypeName,
      this.healthCardTypeAddedTime,
      this.healthCardTypeStatus,
      this.hcmId,
      this.hcmCardType,
      this.hcmFlow,
      this.hcmStatus,
      this.healthCardPlanId,
      this.healthCardPlanCardType,
      this.healthCardPlanDuration,
      this.healthCardPlanDurationDays,
      this.healthCardPlanMrp,
      this.healthCardPlanOfferRate,
      this.healthCardPlanLabOfferRate,
      this.healthCardPlanMedicineOfferRate,
      this.healthCardPlanAddedTime,
      this.healthCardPlanStatus});

  ProposedHealthCard.fromJson(Map<String, dynamic> json) {
    healthCardTypeId = json['health_card_type_id'];
    healthCardTypeName = json['health_card_type_name'];
    healthCardTypeAddedTime = json['health_card_type_added_time'];
    healthCardTypeStatus = json['health_card_type_status'];
    hcmId = json['hcm_id'];
    hcmCardType = json['hcm_card_type'];
    hcmFlow = json['hcm_flow'];
    hcmStatus = json['hcm_status'];
    healthCardPlanId = json['health_card_plan_id'];
    healthCardPlanCardType = json['health_card_plan_card_type'];
    healthCardPlanDuration = json['health_card_plan_duration'];
    healthCardPlanDurationDays = json['health_card_plan_duration_days'];
    healthCardPlanMrp = json['health_card_plan_mrp'];
    healthCardPlanOfferRate = json['health_card_plan_offer_rate'];
    healthCardPlanLabOfferRate = json['health_card_plan_lab_offer_rate'];
    healthCardPlanMedicineOfferRate =
        json['health_card_plan_medicine_offer_rate'];
    healthCardPlanAddedTime = json['health_card_plan_added_time'];
    healthCardPlanStatus = json['health_card_plan_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['health_card_type_id'] = this.healthCardTypeId;
    data['health_card_type_name'] = this.healthCardTypeName;
    data['health_card_type_added_time'] = this.healthCardTypeAddedTime;
    data['health_card_type_status'] = this.healthCardTypeStatus;
    data['hcm_id'] = this.hcmId;
    data['hcm_card_type'] = this.hcmCardType;
    data['hcm_flow'] = this.hcmFlow;
    data['hcm_status'] = this.hcmStatus;
    data['health_card_plan_id'] = this.healthCardPlanId;
    data['health_card_plan_card_type'] = this.healthCardPlanCardType;
    data['health_card_plan_duration'] = this.healthCardPlanDuration;
    data['health_card_plan_duration_days'] = this.healthCardPlanDurationDays;
    data['health_card_plan_mrp'] = this.healthCardPlanMrp;
    data['health_card_plan_offer_rate'] = this.healthCardPlanOfferRate;
    data['health_card_plan_lab_offer_rate'] = this.healthCardPlanLabOfferRate;
    data['health_card_plan_medicine_offer_rate'] =
        this.healthCardPlanMedicineOfferRate;
    data['health_card_plan_added_time'] = this.healthCardPlanAddedTime;
    data['health_card_plan_status'] = this.healthCardPlanStatus;
    return data;
  }
}

class CartDetails {
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

  CartDetails(
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

  CartDetails.fromJson(Map<String, dynamic> json) {
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

class CartData {
  List<HealthCardDetails>? healthCardDetails;
  int? totalItem;
  String? currencySymbol;
  String? totalPrice;
  String? totalOfferedPrice;
  String? discountApplied;
  List<CouponData>? couponData;
  String? couponDiscount;
  String? healthCardDiscount;
  String? healthCardCharge;
  String? gstAmountPercentage;
  String? gstAmount;
  String? toBePay;
  String? countMsg;

  CartData(
      {this.totalItem,
      this.currencySymbol,
      this.totalPrice,
      this.healthCardDetails,
      this.totalOfferedPrice,
      this.discountApplied,
      this.couponData,
      this.couponDiscount,
      this.healthCardDiscount,
      this.healthCardCharge,
      this.gstAmountPercentage,
      this.gstAmount,
      this.toBePay,
      this.countMsg});

  CartData.fromJson(Map<String, dynamic> json) {
    if (json['healthCardDetails'] != null) {
      healthCardDetails = <HealthCardDetails>[];
      json['healthCardDetails'].forEach((v) {
        healthCardDetails!.add(new HealthCardDetails.fromJson(v));
      });
    }
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
    gstAmountPercentage = json['gst_amount_percentage'];
    gstAmount = json['gst_amount'];
    toBePay = json['to_be_pay'];
    countMsg = json['count_msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.healthCardDetails != null) {
      data['healthCardDetails'] =
          this.healthCardDetails!.map((v) => v.toJson()).toList();
    }
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

class BannerData {
  String? image;
  String? bannerTitle;

  BannerData({this.image, this.bannerTitle});

  BannerData.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    bannerTitle = json['bannerTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['bannerTitle'] = this.bannerTitle;
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
  int? healthCardPlanMedicineOfferRate;
  String? healthCardPlanAddedTime;
  int? healthCardPlanStatus;
  int? hcmId;
  int? hcmCardType;
  String? hcmFlow;
  String? hcmStatus;

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
      this.healthCardPlanMedicineOfferRate,
      this.healthCardPlanAddedTime,
      this.healthCardPlanStatus,
      this.hcmId,
      this.hcmCardType,
      this.hcmFlow,
      this.hcmStatus});

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
    healthCardPlanMedicineOfferRate =
        json['health_card_plan_medicine_offer_rate'];
    healthCardPlanAddedTime = json['health_card_plan_added_time'];
    healthCardPlanStatus = json['health_card_plan_status'];
    hcmId = json['hcm_id'];
    hcmCardType = json['hcm_card_type'];
    hcmFlow = json['hcm_flow'];
    hcmStatus = json['hcm_status'];
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
    data['health_card_plan_medicine_offer_rate'] =
        this.healthCardPlanMedicineOfferRate;
    data['health_card_plan_added_time'] = this.healthCardPlanAddedTime;
    data['health_card_plan_status'] = this.healthCardPlanStatus;
    data['hcm_id'] = this.hcmId;
    data['hcm_card_type'] = this.hcmCardType;
    data['hcm_flow'] = this.hcmFlow;
    data['hcm_status'] = this.hcmStatus;
    return data;
  }
}












// class LabCartScreenResp {
//   String? result;
//   String? status;
//   String? message;
//   List<JSONData>? jSONData;

//   LabCartScreenResp({this.result, this.status, this.message, this.jSONData});

//   LabCartScreenResp.fromJson(Map<String, dynamic> json) {
//     result = json['result'];
//     status = json['status'];
//     message = json['Message'];
//     if (json['JSONData'] != null) {
//       jSONData = <JSONData>[];
//       json['JSONData'].forEach((v) {
//         jSONData!.add(new JSONData.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['result'] = this.result;
//     data['status'] = this.status;
//     data['Message'] = this.message;
//     if (this.jSONData != null) {
//       data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class JSONData {
//   String? title1;
//   List<CartDetails>? cartDetails;
//   CartData? cartData;
//   List<BannerData>? bannerData;
//   String? addressDetails;
//   JSONData({this.title1, this.cartDetails, this.cartData, this.bannerData});

//   JSONData.fromJson(Map<String, dynamic> json) {
//     title1 = json['title1'];
//     if (json['cart_details'] != null) {
//       cartDetails = <CartDetails>[];

//       json['cart_details'].forEach((v) {
//         cartDetails!.add(new CartDetails.fromJson(v));
//       });
//     }
//     cartData = json['cart_data'] != null
//         ? new CartData.fromJson(json['cart_data'])
//         : null;
//     if (json['bannerData'] != null) {
//       bannerData = <BannerData>[];
//       json['bannerData'].forEach((v) {
//         bannerData!.add(new BannerData.fromJson(v));
//       });
//     }
//     addressDetails = json['AddressDetails'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['title1'] = this.title1;
//     if (this.cartDetails != null) {
//       data['cart_details'] = this.cartDetails!.map((v) => v.toJson()).toList();
//     }
//     if (this.cartData != null) {
//       data['cart_data'] = this.cartData!.toJson();
//     }
//     if (this.bannerData != null) {
//       data['bannerData'] = this.bannerData!.map((v) => v.toJson()).toList();
//     }
//     data['AddressDetails'] = this.addressDetails;
//     return data;
//   }
// }

// class CartDetails {
//   String? addToCartLabId;
//   String? testName;
//   String? testImage;
//   String? testId;
//   String? includeTest;
//   String? singlePrice;
//   String? actualPrice;
//   int? countPatient;
//   String? countPatientTxt;
//   String? totalRateOfAllPt;
//   String? listText;

//   CartDetails(
//       {this.addToCartLabId,
//       this.testName,
//       this.testImage,
//       this.testId,
//       this.includeTest,
//       this.singlePrice,
//       this.actualPrice,
//       this.countPatient,
//       this.countPatientTxt,
//       this.totalRateOfAllPt,
//       this.listText});

//   CartDetails.fromJson(Map<String, dynamic> json) {
//     addToCartLabId = json['add_to_cart_lab_id'];
//     testName = json['test_name'];
//     testImage = json['test_image'];
//     testId = json['test_id'];
//     includeTest = json['include_test'];
//     singlePrice = json['single_price'];
//     actualPrice = json['actual_price'];
//     countPatient = json['count_patient'];
//     countPatientTxt = json['count_patient_txt'];
//     totalRateOfAllPt = json['total_rate_of_all_pt'];
//     listText = json['list_text'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['add_to_cart_lab_id'] = this.addToCartLabId;
//     data['test_name'] = this.testName;
//     data['test_image'] = this.testImage;
//     data['test_id'] = this.testId;
//     data['include_test'] = this.includeTest;
//     data['single_price'] = this.singlePrice;
//     data['actual_price'] = this.actualPrice;
//     data['count_patient'] = this.countPatient;
//     data['count_patient_txt'] = this.countPatientTxt;
//     data['total_rate_of_all_pt'] = this.totalRateOfAllPt;
//     data['list_text'] = this.listText;
//     return data;
//   }
// }

// class CartData {
//   int? totalItem;
//   String? currencySymbol;
//   String? totalPrice;
//   String? totalOfferedPrice;
//   String? discountApplied;
//   List<CouponData>? couponData;
//   String? couponDiscount;
//   String? healthCardDiscount;
//   String? healthCardCharge;
//   String? gstAmountPercentage;
//   String? gstAmount;
//   String? toBePay;
//   String? countMsg;

//   CartData(
//       {this.totalItem,
//       this.currencySymbol,
//       this.totalPrice,
//       this.totalOfferedPrice,
//       this.discountApplied,
//       this.couponData,
//       this.couponDiscount,
//       this.healthCardDiscount,
//       this.healthCardCharge,
//       this.gstAmountPercentage,
//       this.gstAmount,
//       this.toBePay,
//       this.countMsg});

//   CartData.fromJson(Map<String, dynamic> json) {
//     totalItem = json['total_item'];
//     currencySymbol = json['currency_symbol'];
//     totalPrice = json['total_price'];
//     totalOfferedPrice = json['total_offered_price'];
//     discountApplied = json['discount_applied'];
//     if (json['coupon_data'] != null) {
//       couponData = <CouponData>[];
//       json['coupon_data'].forEach((v) {
//         couponData!.add(new CouponData.fromJson(v));
//       });
//     }
//     couponDiscount = json['coupon_discount'];
//     healthCardDiscount = json['health_card_discount'];
//     healthCardCharge = json['healthCardCharge'];
//     gstAmountPercentage = json['gst_amount_percentage'];
//     gstAmount = json['gst_amount'];
//     toBePay = json['to_be_pay'];
//     countMsg = json['count_msg'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['total_item'] = this.totalItem;
//     data['currency_symbol'] = this.currencySymbol;
//     data['total_price'] = this.totalPrice;
//     data['total_offered_price'] = this.totalOfferedPrice;
//     data['discount_applied'] = this.discountApplied;
//     if (this.couponData != null) {
//       data['coupon_data'] = this.couponData!.map((v) => v.toJson()).toList();
//     }
//     data['coupon_discount'] = this.couponDiscount;
//     data['health_card_discount'] = this.healthCardDiscount;
//     data['healthCardCharge'] = this.healthCardCharge;
//     data['gst_amount_percentage'] = this.gstAmountPercentage;
//     data['gst_amount'] = this.gstAmount;
//     data['to_be_pay'] = this.toBePay;
//     data['count_msg'] = this.countMsg;
//     return data;
//   }
// }

// class CouponData {
//   int? couponId;
//   String? couponCode;
//   String? description;
//   int? minimunCartValue;
//   int? maximumDiscountValue;
//   String? percentageDiscount;
//   String? fixedAmountDiscount;

//   CouponData(
//       {this.couponId,
//       this.couponCode,
//       this.description,
//       this.minimunCartValue,
//       this.maximumDiscountValue,
//       this.percentageDiscount,
//       this.fixedAmountDiscount});

//   CouponData.fromJson(Map<String, dynamic> json) {
//     couponId = json['couponId'];
//     couponCode = json['couponCode'];
//     description = json['description'];
//     minimunCartValue = json['minimunCartValue'];
//     maximumDiscountValue = json['maximumDiscountValue'];
//     percentageDiscount = json['percentageDiscount'];
//     fixedAmountDiscount = json['fixedAmountDiscount'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['couponId'] = this.couponId;
//     data['couponCode'] = this.couponCode;
//     data['description'] = this.description;
//     data['minimunCartValue'] = this.minimunCartValue;
//     data['maximumDiscountValue'] = this.maximumDiscountValue;
//     data['percentageDiscount'] = this.percentageDiscount;
//     data['fixedAmountDiscount'] = this.fixedAmountDiscount;
//     return data;
//   }
// }

// class BannerData {
//   String? image;
//   String? bannerTitle;

//   BannerData({this.image, this.bannerTitle});

//   BannerData.fromJson(Map<String, dynamic> json) {
//     image = json['image'];
//     bannerTitle = json['bannerTitle'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['image'] = this.image;
//     data['bannerTitle'] = this.bannerTitle;
//     return data;
//   }
// }
