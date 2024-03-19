class MedicineBookingOverviewResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MedicineBookingOverviewResp(
      {this.result, this.status, this.message, this.jSONData});

  MedicineBookingOverviewResp.fromJson(Map<String, dynamic> json) {
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
  String? addressDetails;
  List<ProductDetails>? productDetails;
  CartData? cartData;

  JSONData(
      {
      // this.healthCardDetails,
      this.addressDetails,
      this.productDetails,
      this.cartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    addressDetails = json['AddressDetails'];
    if (json['productDetails'] != null) {
      productDetails = <ProductDetails>[];
      json['productDetails'].forEach((v) {
        productDetails!.add(new ProductDetails.fromJson(v));
      });
    }
    cartData = json['cartData'] != null
        ? new CartData.fromJson(json['cartData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['AddressDetails'] = this.addressDetails;
    if (this.productDetails != null) {
      data['productDetails'] =
          this.productDetails!.map((v) => v.toJson()).toList();
    }
    if (this.cartData != null) {
      data['cartData'] = this.cartData!.toJson();
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
    healthCardPlanMedicineOfferRate =
        json['health_card_plan_medicine_offer_rate'];
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
    data['health_card_plan_medicine_offer_rate'] =
        this.healthCardPlanMedicineOfferRate;
    data['health_card_plan_added_time'] = this.healthCardPlanAddedTime;
    data['health_card_plan_status'] = this.healthCardPlanStatus;
    return data;
  }
}

class ProductDetails {
  int? medicineId;
  int? priceId;
  String? typeValues;
  String? medicineName;
  String? stockAvailability;
  String? image;
  double? actualPrice;
  double? offerPrice;
  double? discountPercentage;
  int? quantityVarient;
  String? measurement;
  String? type;
  int? addedToCart;
  double? rating;
  int? count;
  int? countOfRating;

  ProductDetails(
      {this.medicineId,
      this.priceId,
      this.typeValues,
      this.medicineName,
      this.stockAvailability,
      this.image,
      this.actualPrice,
      this.offerPrice,
      this.discountPercentage,
      this.quantityVarient,
      this.measurement,
      this.type,
      this.addedToCart,
      this.rating,
      this.count,
      this.countOfRating});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    medicineId = json['medicineId'];
    priceId = json['priceId'];
    typeValues = json['TypeValues'];
    medicineName = json['medicineName'];
    stockAvailability = json['stockAvailability'];
    image = json['image'];
    actualPrice = double.tryParse(json['actualPrice'].toString());
    offerPrice = double.tryParse(json['offerPrice'].toString());
    discountPercentage = double.tryParse(json['discountPercentage'].toString());
    quantityVarient = json['QuantityVarient'];
    measurement = json['measurement'];
    type = json['type'];
    addedToCart = json['addedToCart'];
    rating = double.tryParse(json['rating'].toString());
    count = json['count'];
    countOfRating = json['countOfRating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['medicineId'] = this.medicineId;
    data['priceId'] = this.priceId;
    data['TypeValues'] = this.typeValues;
    data['medicineName'] = this.medicineName;
    data['stockAvailability'] = this.stockAvailability;
    data['image'] = this.image;
    data['actualPrice'] = this.actualPrice;
    data['offerPrice'] = this.offerPrice;
    data['discountPercentage'] = this.discountPercentage;
    data['QuantityVarient'] = this.quantityVarient;
    data['measurement'] = this.measurement;
    data['type'] = this.type;
    data['addedToCart'] = this.addedToCart;
    data['rating'] = this.rating;
    data['count'] = this.count;
    data['countOfRating'] = this.countOfRating;
    return data;
  }
}

class CartData {
  int? productCount;
  String? totalOfferedPrice;
  String? totalActualPrice;
  String? totalDiscountPrice;
  List<CouponData>? couponData;
  String? couponDiscount;
  String? healthCardDiscount;
  String? healthCardCharge;
  String? collectionAmount;
  String? gstPercentage;
  String? getAmount;
  String? netPayableAmount;
  List<HealthCardDetails>? healthCardDetails;
  CartData(
      {this.productCount,
      this.totalOfferedPrice,
      this.totalActualPrice,
      this.totalDiscountPrice,
      this.couponData,
      this.couponDiscount,
      this.healthCardDiscount,
      this.healthCardCharge,
      this.collectionAmount,
      this.gstPercentage,
      this.getAmount,
      this.netPayableAmount});

  CartData.fromJson(Map<String, dynamic> json) {
    productCount = json['productCount'];
    totalOfferedPrice = json['totalOfferedPrice'];
    totalActualPrice = json['totalActualPrice'];
    totalDiscountPrice = json['totalDiscountPrice'];
    if (json['couponData'] != null) {
      couponData = <CouponData>[];
      json['couponData'].forEach((v) {
        couponData!.add(new CouponData.fromJson(v));
      });
      if (json['healthCardDetails'] != null) {
        healthCardDetails = <HealthCardDetails>[];
        json['healthCardDetails'].forEach((v) {
          healthCardDetails!.add(new HealthCardDetails.fromJson(v));
        });
      }
    }
    couponDiscount = json['couponDiscount'];
    healthCardDiscount = json['healthCardDiscount'];
    healthCardCharge = json['healthCardCharge'];
    collectionAmount = json['collectionAmount'];
    gstPercentage = json['gstPercentage'];
    getAmount = json['getAmount'];
    netPayableAmount = json['NetPayableAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productCount'] = this.productCount;
    data['totalOfferedPrice'] = this.totalOfferedPrice;
    data['totalActualPrice'] = this.totalActualPrice;
    data['totalDiscountPrice'] = this.totalDiscountPrice;
    if (this.couponData != null) {
      data['couponData'] = this.couponData!.map((v) => v.toJson()).toList();
    }
    if (this.healthCardDetails != null) {
      data['healthCardDetails'] =
          this.healthCardDetails!.map((v) => v.toJson()).toList();
    }
    data['couponDiscount'] = this.couponDiscount;
    data['healthCardDiscount'] = this.healthCardDiscount;
    data['healthCardCharge'] = this.healthCardCharge;
    data['collectionAmount'] = this.collectionAmount;
    data['gstPercentage'] = this.gstPercentage;
    data['getAmount'] = this.getAmount;
    data['NetPayableAmount'] = this.netPayableAmount;
    return data;
  }
}

class CouponData {
  int? couponId;
  String? couponCode;
  String? description;
  double? minimunCartValue;
  double? maximumDiscountValue;
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
    minimunCartValue = double.tryParse(json['minimunCartValue'].toString());
    maximumDiscountValue =
        double.tryParse(json['maximumDiscountValue'].toString());
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
