// class MedicineHistoryDetailResp {
//   String? result;
//   String? status;
//   String? message;
//   JSONData? jSONData;

//   MedicineHistoryDetailResp(
//       {this.result, this.status, this.message, this.jSONData});

//   MedicineHistoryDetailResp.fromJson(Map<String, dynamic> json) {
//     result = json['result'];
//     status = json['status'];
//     message = json['Message'];
//     jSONData = json['JSONData'] != null
//         ? new JSONData.fromJson(json['JSONData'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['result'] = this.result;
//     data['status'] = this.status;
//     data['Message'] = this.message;
//     if (this.jSONData != null) {
//       data['JSONData'] = this.jSONData!.toJson();
//     }
//     return data;
//   }
// }

// class JSONData {
//   List<HealthCardDetails>? healthCardDetails;
//   List<ProductData>? productData;
//   List<BookingDetails>? bookingDetails;

//   JSONData({this.healthCardDetails, this.productData, this.bookingDetails});

//   JSONData.fromJson(Map<String, dynamic> json) {
//     if (json['healthCardDetails'] != null) {
//       healthCardDetails = <HealthCardDetails>[];
//       json['healthCardDetails'].forEach((v) {
//         healthCardDetails!.add(new HealthCardDetails.fromJson(v));
//       });
//     }
//     if (json['productData'] != null) {
//       productData = <ProductData>[];
//       json['productData'].forEach((v) {
//         productData!.add(new ProductData.fromJson(v));
//       });
//     }
//     if (json['bookingDetails'] != null) {
//       bookingDetails = <BookingDetails>[];
//       json['bookingDetails'].forEach((v) {
//         bookingDetails!.add(new BookingDetails.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.healthCardDetails != null) {
//       data['healthCardDetails'] =
//           this.healthCardDetails!.map((v) => v.toJson()).toList();
//     }
//     if (this.productData != null) {
//       data['productData'] = this.productData!.map((v) => v.toJson()).toList();
//     }
//     if (this.bookingDetails != null) {
//       data['bookingDetails'] =
//           this.bookingDetails!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class HealthCardDetails {
//   int? healthCardSubscriptionId;
//   String? healthCardSubscriptionCid;
//   String? healthCardSubscriptionPlanId;
//   String? healthCardSubscriptionCardNo;
//   String? healthCardSubscriptionName;
//   String? healthCardSubscriptionLastName;
//   String? healthCardSubscriptionMobileNo;
//   String? healthCardSubscriptionGender;
//   String? healthCardSubscriptionIssueDate;
//   String? healthCardSubscriptionExpDate;
//   String? healthCardSubscriptionAddedTimeUnx;
//   int? healthCardSubscriptionStatus;
//   int? healthCardPlanId;
//   String? healthCardPlanCardType;
//   String? healthCardPlanDuration;
//   String? healthCardPlanDurationDays;
//   String? healthCardPlanMrp;
//   String? healthCardPlanOfferRate;
//   int? healthCardPlanLabOfferRate;
//   int? healthCardPlanMedicineOfferRate;
//   String? healthCardPlanAddedTime;
//   int? healthCardPlanStatus;
//   int? healthCardTypeId;
//   String? healthCardTypeName;
//   String? healthCardTypeAddedTime;
//   String? healthCardTypeStatus;

//   HealthCardDetails(
//       {this.healthCardSubscriptionId,
//       this.healthCardSubscriptionCid,
//       this.healthCardSubscriptionPlanId,
//       this.healthCardSubscriptionCardNo,
//       this.healthCardSubscriptionName,
//       this.healthCardSubscriptionLastName,
//       this.healthCardSubscriptionMobileNo,
//       this.healthCardSubscriptionGender,
//       this.healthCardSubscriptionIssueDate,
//       this.healthCardSubscriptionExpDate,
//       this.healthCardSubscriptionAddedTimeUnx,
//       this.healthCardSubscriptionStatus,
//       this.healthCardPlanId,
//       this.healthCardPlanCardType,
//       this.healthCardPlanDuration,
//       this.healthCardPlanDurationDays,
//       this.healthCardPlanMrp,
//       this.healthCardPlanOfferRate,
//       this.healthCardPlanLabOfferRate,
//       this.healthCardPlanMedicineOfferRate,
//       this.healthCardPlanAddedTime,
//       this.healthCardPlanStatus,
//       this.healthCardTypeId,
//       this.healthCardTypeName,
//       this.healthCardTypeAddedTime,
//       this.healthCardTypeStatus});

//   HealthCardDetails.fromJson(Map<String, dynamic> json) {
//     healthCardSubscriptionId = json['health_card_subscription_id'];
//     healthCardSubscriptionCid = json['health_card_subscription_cid'];
//     healthCardSubscriptionPlanId = json['health_card_subscription_plan_id'];
//     healthCardSubscriptionCardNo = json['health_card_subscription_card_no'];
//     healthCardSubscriptionName = json['health_card_subscription_name'];
//     healthCardSubscriptionLastName = json['health_card_subscription_last_name'];
//     healthCardSubscriptionMobileNo = json['health_card_subscription_mobile_no'];
//     healthCardSubscriptionGender = json['health_card_subscription_gender'];
//     healthCardSubscriptionIssueDate =
//         json['health_card_subscription_issue_date'];
//     healthCardSubscriptionExpDate = json['health_card_subscription_exp_date'];
//     healthCardSubscriptionAddedTimeUnx =
//         json['health_card_subscription_added_time_unx'];
//     healthCardSubscriptionStatus = json['health_card_subscription_status'];
//     healthCardPlanId = json['health_card_plan_id'];
//     healthCardPlanCardType = json['health_card_plan_card_type'];
//     healthCardPlanDuration = json['health_card_plan_duration'];
//     healthCardPlanDurationDays = json['health_card_plan_duration_days'];
//     healthCardPlanMrp = json['health_card_plan_mrp'];
//     healthCardPlanOfferRate = json['health_card_plan_offer_rate'];
//     healthCardPlanLabOfferRate = json['health_card_plan_lab_offer_rate'];
//     healthCardPlanMedicineOfferRate =
//         json['health_card_plan_medicine_offer_rate'];
//     healthCardPlanAddedTime = json['health_card_plan_added_time'];
//     healthCardPlanStatus = json['health_card_plan_status'];
//     healthCardTypeId = json['health_card_type_id'];
//     healthCardTypeName = json['health_card_type_name'];
//     healthCardTypeAddedTime = json['health_card_type_added_time'];
//     healthCardTypeStatus = json['health_card_type_status'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['health_card_subscription_id'] = this.healthCardSubscriptionId;
//     data['health_card_subscription_cid'] = this.healthCardSubscriptionCid;
//     data['health_card_subscription_plan_id'] =
//         this.healthCardSubscriptionPlanId;
//     data['health_card_subscription_card_no'] =
//         this.healthCardSubscriptionCardNo;
//     data['health_card_subscription_name'] = this.healthCardSubscriptionName;
//     data['health_card_subscription_last_name'] =
//         this.healthCardSubscriptionLastName;
//     data['health_card_subscription_mobile_no'] =
//         this.healthCardSubscriptionMobileNo;
//     data['health_card_subscription_gender'] = this.healthCardSubscriptionGender;
//     data['health_card_subscription_issue_date'] =
//         this.healthCardSubscriptionIssueDate;
//     data['health_card_subscription_exp_date'] =
//         this.healthCardSubscriptionExpDate;
//     data['health_card_subscription_added_time_unx'] =
//         this.healthCardSubscriptionAddedTimeUnx;
//     data['health_card_subscription_status'] = this.healthCardSubscriptionStatus;
//     data['health_card_plan_id'] = this.healthCardPlanId;
//     data['health_card_plan_card_type'] = this.healthCardPlanCardType;
//     data['health_card_plan_duration'] = this.healthCardPlanDuration;
//     data['health_card_plan_duration_days'] = this.healthCardPlanDurationDays;
//     data['health_card_plan_mrp'] = this.healthCardPlanMrp;
//     data['health_card_plan_offer_rate'] = this.healthCardPlanOfferRate;
//     data['health_card_plan_lab_offer_rate'] = this.healthCardPlanLabOfferRate;
//     data['health_card_plan_medicine_offer_rate'] =
//         this.healthCardPlanMedicineOfferRate;
//     data['health_card_plan_added_time'] = this.healthCardPlanAddedTime;
//     data['health_card_plan_status'] = this.healthCardPlanStatus;
//     data['health_card_type_id'] = this.healthCardTypeId;
//     data['health_card_type_name'] = this.healthCardTypeName;
//     data['health_card_type_added_time'] = this.healthCardTypeAddedTime;
//     data['health_card_type_status'] = this.healthCardTypeStatus;
//     return data;
//   }
// }

// class ProductData {
//   int? quantity;
//   int? medicineId;
//   int? priceId;
//   String? medicineName;
//   String? image;
//   double? actualPrice;
//   double? offerPrice;
//   double? discountPercentage;
//   int? quantityVarient;
//   String? type;
//   String? medicineMeasurment;

//   ProductData({
//     this.quantity,
//     this.medicineId,
//     this.priceId,
//     this.medicineName,
//     this.image,
//     this.actualPrice,
//     this.offerPrice,
//     this.discountPercentage,
//     this.quantityVarient,
//     this.type,
//     this.medicineMeasurment,
//   });

//   ProductData.fromJson(Map<String, dynamic> json) {
//     quantity = json['quantity'];
//     medicineId = json['medicineId'];
//     priceId = json['priceId'];
//     medicineName = json['medicineName'];
//     image = json['image'];
//     actualPrice = double.tryParse(json['actualPrice'].toString());
//     offerPrice = double.tryParse(json['offerPrice'].toString());
//     discountPercentage = double.tryParse(json['discountPercentage'].toString());
//     quantityVarient = json['QuantityVarient'];
//     type = json['type'];
//     medicineMeasurment = json['medicineMeasurment'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['quantity'] = this.quantity;
//     data['medicineId'] = this.medicineId;
//     data['priceId'] = this.priceId;
//     data['medicineName'] = this.medicineName;
//     data['image'] = this.image;
//     data['actualPrice'] = this.actualPrice;
//     data['offerPrice'] = this.offerPrice;
//     data['discountPercentage'] = this.discountPercentage;
//     data['QuantityVarient'] = this.quantityVarient;
//     data['type'] = this.type;
//     data['medicineMeasurment'] = this.medicineMeasurment;
//     return data;
//   }
// }

// class BookingDetails {
//   int? oredrId;
//   String? paymentStatus;
//   String? orderStatus;
//   String? bookingDateTime;
//   String? deliveryStatus;
//   String? address;
//   String? addressType;
//   double? productCharges;
//   double? gstPercentage;
//   double? gstAmount;
//   double? coupanDiscount;
//   double? paidAmount;
//   String? healthCardSubscriptionId;
//   double? healthCardDiscount;
//   double? healthCardCharges;
//   String? paymentStatusObject;
//   String? medicineDeliveryStatusObject;
//   String? orderStatusObject;

//   BookingDetails(
//       {this.oredrId,
//       this.paymentStatus,
//       this.orderStatus,
//       this.bookingDateTime,
//       this.deliveryStatus,
//       this.address,
//       this.addressType,
//       this.productCharges,
//       this.gstPercentage,
//       this.gstAmount,
//       this.coupanDiscount,
//       this.paidAmount,
//       this.healthCardSubscriptionId,
//       this.healthCardDiscount,
//       this.healthCardCharges,
//       this.paymentStatusObject,
//       this.medicineDeliveryStatusObject,
//       this.orderStatusObject});

//   BookingDetails.fromJson(Map<String, dynamic> json) {
//     oredrId = json['oredrId'];
//     paymentStatus = json['paymentStatus'];
//     orderStatus = json['orderStatus'];
//     bookingDateTime = json['BookingDateTime'];
//     deliveryStatus = json['deliveryStatus'];
//     address = json['address'];
//     addressType = json['addressType'];
//     productCharges = double.tryParse(json['productCharges'].toString());
//     gstPercentage = double.tryParse(json['gstPercentage'].toString());
//     gstAmount = double.tryParse(json['gstAmount'].toString());
//     coupanDiscount = double.tryParse(json['coupanDiscount'].toString());
//     paidAmount = double.tryParse(json['paidAmount'].toString());
//     healthCardSubscriptionId = json['healthCardSubscriptionId'];
//     healthCardDiscount = double.tryParse(json['healthCardDiscount'].toString());
//     healthCardCharges = double.tryParse(json['healthCardCharges'].toString());
//     paymentStatusObject = json['paymentStatusObject'];
//     medicineDeliveryStatusObject = json['medicineDeliveryStatusObject'];
//     orderStatusObject = json['orderStatusObject'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['oredrId'] = this.oredrId;
//     data['paymentStatus'] = this.paymentStatus;
//     data['orderStatus'] = this.orderStatus;
//     data['BookingDateTime'] = this.bookingDateTime;
//     data['deliveryStatus'] = this.deliveryStatus;
//     data['address'] = this.address;
//     data['addressType'] = this.addressType;
//     data['productCharges'] = this.productCharges;
//     data['gstPercentage'] = this.gstPercentage;
//     data['gstAmount'] = this.gstAmount;
//     data['coupanDiscount'] = this.coupanDiscount;
//     data['paidAmount'] = this.paidAmount;
//     data['healthCardSubscriptionId'] = this.healthCardSubscriptionId;
//     data['healthCardDiscount'] = this.healthCardDiscount;
//     data['healthCardCharges'] = this.healthCardCharges;
//     data['paymentStatusObject'] = this.paymentStatusObject;
//     data['medicineDeliveryStatusObject'] = this.medicineDeliveryStatusObject;
//     data['orderStatusObject'] = this.orderStatusObject;
//     return data;
//   }
// }

class MedicineHistoryDetailResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MedicineHistoryDetailResp(
      {this.result, this.status, this.message, this.jSONData});

  MedicineHistoryDetailResp.fromJson(Map<String, dynamic> json) {
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
  List<HealthCardDetails>? healthCardDetails;
  List<PrescriptionData>? prescriptionData;
  List<ProductData>? productData;
  List<BookingDetails>? bookingDetails;

  JSONData(
      {this.healthCardDetails,
      this.prescriptionData,
      this.productData,
      this.bookingDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['healthCardDetails'] != null) {
      healthCardDetails = <HealthCardDetails>[];
      json['healthCardDetails'].forEach((v) {
        healthCardDetails!.add(new HealthCardDetails.fromJson(v));
      });
    }
    if (json['prescriptionData'] != null) {
      prescriptionData = <PrescriptionData>[];
      json['prescriptionData'].forEach((v) {
        prescriptionData!.add(new PrescriptionData.fromJson(v));
      });
    }
    if (json['productData'] != null) {
      productData = <ProductData>[];
      json['productData'].forEach((v) {
        productData!.add(new ProductData.fromJson(v));
      });
    }
    if (json['bookingDetails'] != null) {
      bookingDetails = <BookingDetails>[];
      json['bookingDetails'].forEach((v) {
        bookingDetails!.add(new BookingDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.healthCardDetails != null) {
      data['healthCardDetails'] =
          this.healthCardDetails!.map((v) => v.toJson()).toList();
    }
    if (this.prescriptionData != null) {
      data['prescriptionData'] =
          this.prescriptionData!.map((v) => v.toJson()).toList();
    }
    if (this.productData != null) {
      data['productData'] = this.productData!.map((v) => v.toJson()).toList();
    }
    if (this.bookingDetails != null) {
      data['bookingDetails'] =
          this.bookingDetails!.map((v) => v.toJson()).toList();
    }
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
  int? healthCardTypeId;
  String? healthCardTypeName;
  String? healthCardTypeAddedTime;
  String? healthCardTypeStatus;

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
      this.healthCardTypeId,
      this.healthCardTypeName,
      this.healthCardTypeAddedTime,
      this.healthCardTypeStatus});

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
    healthCardTypeId = json['health_card_type_id'];
    healthCardTypeName = json['health_card_type_name'];
    healthCardTypeAddedTime = json['health_card_type_added_time'];
    healthCardTypeStatus = json['health_card_type_status'];
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
    data['health_card_type_id'] = this.healthCardTypeId;
    data['health_card_type_name'] = this.healthCardTypeName;
    data['health_card_type_added_time'] = this.healthCardTypeAddedTime;
    data['health_card_type_status'] = this.healthCardTypeStatus;
    return data;
  }
}

class PrescriptionData {
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

  PrescriptionData(
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
      this.cpoLabId});

  PrescriptionData.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class ProductData {
  int? quantity;
  int? medicineId;
  int? priceId;
  String? medicineName;
  String? medicineMeasurment;
  String? image;
  double? actualPrice;
  double? offerPrice;
  double? discountPercentage;
  int? quantityVarient;
  String? type;

  ProductData(
      {this.quantity,
      this.medicineId,
      this.priceId,
      this.medicineName,
      this.medicineMeasurment,
      this.image,
      this.actualPrice,
      this.offerPrice,
      this.discountPercentage,
      this.quantityVarient,
      this.type});

  ProductData.fromJson(Map<String, dynamic> json) {
    quantity = json['quantity'];
    medicineId = json['medicineId'];
    priceId = json['priceId'];
    medicineName = json['medicineName'];
    medicineMeasurment = json['medicineMeasurment'];
    image = json['image'];
    actualPrice = double.tryParse(json['actualPrice'].toString());
    offerPrice = double.tryParse(json['offerPrice'].toString());
    discountPercentage = double.tryParse(json['discountPercentage'].toString());
    quantityVarient = json['QuantityVarient'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quantity'] = this.quantity;
    data['medicineId'] = this.medicineId;
    data['priceId'] = this.priceId;
    data['medicineName'] = this.medicineName;
    data['medicineMeasurment'] = this.medicineMeasurment;
    data['image'] = this.image;
    data['actualPrice'] = this.actualPrice;
    data['offerPrice'] = this.offerPrice;
    data['discountPercentage'] = this.discountPercentage;
    data['QuantityVarient'] = this.quantityVarient;
    data['type'] = this.type;
    return data;
  }
}

class BookingDetails {
  int? oredrId;
  String? paymentStatus;
  String? orderStatus;
  String? bookingDateTime;
  String? deliveryStatus;
  String? address;
  String? addressType;
  double? productActualPrice;
  double? productOfferedPrice;
  double? productDiscountPrice;
  double? gstPercentage;
  double? gstAmount;
  double? coupanDiscount;
  double? paidAmount;
  String? healthCardSubscriptionId;
  double? healthCardDiscount;
  double? healthCardCharges;
  String? prescriptionImageId;
  String? paymentStatusObject;
  String? medicineDeliveryStatusObject;
  String? orderStatusObject;

  BookingDetails(
      {this.oredrId,
      this.paymentStatus,
      this.orderStatus,
      this.bookingDateTime,
      this.deliveryStatus,
      this.address,
      this.addressType,
      this.productActualPrice,
      this.productOfferedPrice,
      this.productDiscountPrice,
      this.gstPercentage,
      this.gstAmount,
      this.coupanDiscount,
      this.paidAmount,
      this.healthCardSubscriptionId,
      this.healthCardDiscount,
      this.healthCardCharges,
      this.prescriptionImageId,
      this.paymentStatusObject,
      this.medicineDeliveryStatusObject,
      this.orderStatusObject});

  BookingDetails.fromJson(Map<String, dynamic> json) {
    oredrId = json['oredrId'];
    paymentStatus = json['paymentStatus'];
    orderStatus = json['orderStatus'];
    bookingDateTime = json['BookingDateTime'];
    deliveryStatus = json['deliveryStatus'];
    address = json['address'];
    addressType = json['addressType'];
    productActualPrice = double.tryParse(json['productActualPrice'].toString());
    productOfferedPrice =
        double.tryParse(json['productOfferedPrice'].toString());
    productDiscountPrice =
        double.tryParse(json['productDiscountPrice'].toString());
    gstPercentage = double.tryParse(json['gstPercentage'].toString());
    gstAmount = double.tryParse(json['gstAmount'].toString());
    coupanDiscount = double.tryParse(json['coupanDiscount'].toString());
    paidAmount = double.tryParse(json['paidAmount'].toString());
    healthCardSubscriptionId = json['healthCardSubscriptionId'];
    healthCardDiscount = double.tryParse(json['healthCardDiscount'].toString());
    healthCardCharges = double.tryParse(json['healthCardCharges'].toString());
    prescriptionImageId = json['prescriptionImageId'];
    paymentStatusObject = json['paymentStatusObject'];
    medicineDeliveryStatusObject = json['medicineDeliveryStatusObject'];
    orderStatusObject = json['orderStatusObject'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['oredrId'] = this.oredrId;
    data['paymentStatus'] = this.paymentStatus;
    data['orderStatus'] = this.orderStatus;
    data['BookingDateTime'] = this.bookingDateTime;
    data['deliveryStatus'] = this.deliveryStatus;
    data['address'] = this.address;
    data['addressType'] = this.addressType;
    data['productActualPrice'] = this.productActualPrice;
    data['productOfferedPrice'] = this.productOfferedPrice;
    data['productDiscountPrice'] = this.productDiscountPrice;
    data['gstPercentage'] = this.gstPercentage;
    data['gstAmount'] = this.gstAmount;
    data['coupanDiscount'] = this.coupanDiscount;
    data['paidAmount'] = this.paidAmount;
    data['healthCardSubscriptionId'] = this.healthCardSubscriptionId;
    data['healthCardDiscount'] = this.healthCardDiscount;
    data['healthCardCharges'] = this.healthCardCharges;
    data['prescriptionImageId'] = this.prescriptionImageId;
    data['paymentStatusObject'] = this.paymentStatusObject;
    data['medicineDeliveryStatusObject'] = this.medicineDeliveryStatusObject;
    data['orderStatusObject'] = this.orderStatusObject;
    return data;
  }
}
