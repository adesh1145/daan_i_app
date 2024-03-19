class MpCartResp {
  String? result;
  String? status;
  String? message;

  List<JSONData>? jSONData;
  MpCartResp({this.result, this.status, this.message, this.jSONData});

  MpCartResp.fromJson(Map<String, dynamic> json) {
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
  List<CartProducts>? cartProducts;
  double? totalAmount;
  double? healthCardCharges;
  List<HealthCard>? healthCard;
  double? healthCardDiscount;
  List<PraposedHealthCard>? praposedHealthCard;
  double? praposedHealthCardDiscount;
  List<Coupon>? coupon;
  double? couponDiscount;
  double? gstPercenatge;
  double? gstAmount;
  double? finalCartValue;
  bool? upgradeFlag;
  String? address;

  JSONData(
      {this.cartProducts,
      this.totalAmount,
      this.healthCard,
      this.healthCardCharges,
      this.healthCardDiscount,
      this.praposedHealthCard,
      this.praposedHealthCardDiscount,
      this.coupon,
      this.couponDiscount,
      this.address,
      this.gstPercenatge,
      this.gstAmount,
      this.upgradeFlag,
      this.finalCartValue});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['cartProducts'] != null) {
      cartProducts = <CartProducts>[];
      json['cartProducts'].forEach((v) {
        cartProducts!.add(new CartProducts.fromJson(v));
      });
    }
    totalAmount = double.tryParse(json['totalAmount'].toString());
    if (json['healthCard'] != null) {
      healthCard = <HealthCard>[];
      json['healthCard'].forEach((v) {
        healthCard!.add(new HealthCard.fromJson(v));
      });
    }
    healthCardDiscount = double.tryParse(json['healthCardDiscount'].toString());
    if (json['praposedHealthCard'] != null) {
      praposedHealthCard = <PraposedHealthCard>[];
      json['praposedHealthCard'].forEach((v) {
        praposedHealthCard!.add(new PraposedHealthCard.fromJson(v));
      });
    }
    praposedHealthCardDiscount =
        double.tryParse(json['praposedHealthCardDiscount'].toString());
    healthCardCharges = double.tryParse(json['healthCardCharges'].toString());
    if (json['coupon'] != null) {
      coupon = <Coupon>[];
      json['coupon'].forEach((v) {
        coupon!.add(new Coupon.fromJson(v));
      });
    }
    couponDiscount = double.tryParse(json['couponDiscount'].toString());
    gstPercenatge = double.tryParse(json['gstPercenatge'].toString());
    gstAmount = double.tryParse(json['gstAmount'].toString());
    finalCartValue = double.tryParse(json['finalCartValue'].toString());
    upgradeFlag = json['upgradeFlag'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cartProducts != null) {
      data['cartProducts'] = this.cartProducts!.map((v) => v.toJson()).toList();
    }
    data['totalAmount'] = this.totalAmount;
    if (this.healthCard != null) {
      data['healthCard'] = this.healthCard!.map((v) => v.toJson()).toList();
    }
    data['healthCardDiscount'] = this.healthCardDiscount;
    if (this.praposedHealthCard != null) {
      data['praposedHealthCard'] =
          this.praposedHealthCard!.map((v) => v.toJson()).toList();
    }
    data['praposedHealthCardDiscount'] = this.praposedHealthCardDiscount;
    if (this.coupon != null) {
      data['coupon'] = this.coupon!.map((v) => v.toJson()).toList();
    }
    data['couponDiscount'] = this.couponDiscount;
    data['healthCardCharges'] = this.healthCardCharges;
    data['gstPercenatge'] = this.gstPercenatge;
    data['gstAmount'] = this.gstAmount;
    data['finalCartValue'] = this.finalCartValue;
    data['upgradeFlag'] = this.upgradeFlag;
    data['address'] = this.address;
    return data;
  }
}

class CartProducts {
  int? id;
  int? productId;
  int? priceId;
  String? image;
  String? name;
  String? overView;
  int? itemQuantity;
  String? gender;
  String? serviceType;
  String? startDate;
  String? endDate;
  String? remark;
  int? duration;
  double? singlePrice;
  double? totalPrice;

  CartProducts(
      {this.id,
      this.productId,
      this.priceId,
      this.image,
      this.name,
      this.overView,
      this.itemQuantity,
      this.gender,
      this.serviceType,
      this.duration,
      this.startDate,
      this.remark,
      this.endDate,
      this.singlePrice,
      this.totalPrice});

  CartProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    priceId = json['priceId'];
    image = json['image'];
    name = json['name'];
    overView = json['overView'];
    itemQuantity = json['itemQuantity'];
    gender = json['gender'];
    serviceType = json['serviceType'];
    duration = json['duration'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    remark = json['remark'];
    singlePrice = double.tryParse(json['singlePrice'].toString());
    totalPrice = double.tryParse(json['totalPrice'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['priceId'] = this.priceId;
    data['image'] = this.image;
    data['name'] = this.name;
    data['overView'] = this.overView;
    data['itemQuantity'] = this.itemQuantity;
    data['gender'] = this.gender;
    data['serviceType'] = this.serviceType;
    data['duration'] = this.duration;
    data['singlePrice'] = this.singlePrice;
    data['totalPrice'] = this.totalPrice;
    data['remark'] = this.remark;
    data['endDate'] = this.endDate;
    data['startDate'] = this.startDate;
    return data;
  }
}

class HealthCard {
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
  double? healthCardPlanLabOfferRate;
  double? healthCardPlanMedicineOfferRate;
  String? healthCardPlanAddedTime;
  int? healthCardPlanStatus;
  int? healthCardTypeId;
  String? healthCardTypeName;
  String? healthCardTypeAddedTime;
  String? healthCardTypeStatus;
  int? hcmId;
  int? hcmCardType;
  String? hcmFlow;
  String? hcmStatus;
  // Null? mphpId;
  // Null? mphpHealthCardTypeId;
  // Null? mphpDescription;
  // Null? mphpPercentage;
  // Null? mphpMaxAmount;
  // Null? mphpStatus;

  HealthCard({
    this.healthCardSubscriptionId,
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
    this.healthCardTypeStatus,
    this.hcmId,
    this.hcmCardType,
    this.hcmFlow,
    this.hcmStatus,
    // this.mphpId,
    // this.mphpHealthCardTypeId,
    // this.mphpDescription,
    // this.mphpPercentage,
    // this.mphpMaxAmount,
    // this.mphpStatus
  });

  HealthCard.fromJson(Map<String, dynamic> json) {
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
    healthCardPlanLabOfferRate =
        double.tryParse(json['health_card_plan_lab_offer_rate'].toString());
    healthCardPlanMedicineOfferRate = double.tryParse(
        json['health_card_plan_medicine_offer_rate'].toString());
    healthCardPlanAddedTime = json['health_card_plan_added_time'];
    healthCardPlanStatus = json['health_card_plan_status'];
    healthCardTypeId = json['health_card_type_id'];
    healthCardTypeName = json['health_card_type_name'];
    healthCardTypeAddedTime = json['health_card_type_added_time'];
    healthCardTypeStatus = json['health_card_type_status'];
    hcmId = json['hcm_id'];
    hcmCardType = json['hcm_card_type'];
    hcmFlow = json['hcm_flow'];
    hcmStatus = json['hcm_status'];
    // mphpId = json['mphp_id'];
    // mphpHealthCardTypeId = json['mphp_health_card_type_id'];
    // mphpDescription = json['mphp_description'];
    // mphpPercentage = json['mphp_percentage'];
    // mphpMaxAmount = json['mphp_max_amount'];
    // mphpStatus = json['mphp_status'];
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
    data['hcm_id'] = this.hcmId;
    data['hcm_card_type'] = this.hcmCardType;
    data['hcm_flow'] = this.hcmFlow;
    data['hcm_status'] = this.hcmStatus;
    // data['mphp_id'] = this.mphpId;
    // data['mphp_health_card_type_id'] = this.mphpHealthCardTypeId;
    // data['mphp_description'] = this.mphpDescription;
    // data['mphp_percentage'] = this.mphpPercentage;
    // data['mphp_max_amount'] = this.mphpMaxAmount;
    // data['mphp_status'] = this.mphpStatus;
    return data;
  }
}

class PraposedHealthCard {
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
  double? healthCardPlanLabOfferRate;
  double? healthCardPlanMedicineOfferRate;
  String? healthCardPlanAddedTime;
  int? healthCardPlanStatus;

  PraposedHealthCard(
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

  PraposedHealthCard.fromJson(Map<String, dynamic> json) {
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
    healthCardPlanLabOfferRate =
        double.tryParse(json['health_card_plan_lab_offer_rate'].toString());
    healthCardPlanMedicineOfferRate = double.tryParse(
        json['health_card_plan_medicine_offer_rate'].toString());
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

class Coupon {
  int? couponId;
  String? couponCode;
  String? description;
  double? minimumCart;
  double? couponDiscountPercentage;
  double? couponDiscountAmount;
  double? maximumDiscountAmount;
  double? appliedDiscountAmount;

  Coupon(
      {this.couponId,
      this.couponCode,
      this.description,
      this.minimumCart,
      this.couponDiscountPercentage,
      this.couponDiscountAmount,
      this.maximumDiscountAmount,
      this.appliedDiscountAmount});

  Coupon.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    couponCode = json['couponCode'];
    description = json['description'];
    minimumCart = double.tryParse(json['minimumCart'].toString());
    couponDiscountPercentage =
        double.tryParse(json['couponDiscountPercentage'].toString());
    couponDiscountAmount =
        double.tryParse(json['couponDiscountAmount'].toString());
    maximumDiscountAmount =
        double.tryParse(json['maximumDiscountAmount'].toString());
    appliedDiscountAmount =
        double.tryParse(json['appliedDiscountAmount'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['couponId'] = this.couponId;
    data['couponCode'] = this.couponCode;
    data['description'] = this.description;
    data['minimumCart'] = this.minimumCart;
    data['couponDiscountPercentage'] = this.couponDiscountPercentage;
    data['couponDiscountAmount'] = this.couponDiscountAmount;
    data['maximumDiscountAmount'] = this.maximumDiscountAmount;
    data['appliedDiscountAmount'] = this.appliedDiscountAmount;
    return data;
  }
}
