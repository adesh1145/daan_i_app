class MpPdpResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MpPdpResp({this.result, this.status, this.message, this.jSONData});

  MpPdpResp.fromJson(Map<String, dynamic> json) {
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
  Details? details;
  List<CartData>? cartData;
  List<PriceDetails>? priceDetails;
  List<HealthCardBanner>? healthCardBanner;
  MiniCartData? miniCartData;

  JSONData(
      {this.details,
      this.cartData,
      this.priceDetails,
      this.healthCardBanner,
      this.miniCartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    details =
        json['details'] != null ? new Details.fromJson(json['details']) : null;
    if (json['cartData'] != null) {
      cartData = <CartData>[];
      json['cartData'].forEach((v) {
        cartData!.add(new CartData.fromJson(v));
      });
    }
    if (json['priceDetails'] != null) {
      priceDetails = <PriceDetails>[];
      json['priceDetails'].forEach((v) {
        priceDetails!.add(new PriceDetails.fromJson(v));
      });
    }
    if (json['HealthCardBanner'] != null) {
      healthCardBanner = <HealthCardBanner>[];
      json['HealthCardBanner'].forEach((v) {
        healthCardBanner!.add(new HealthCardBanner.fromJson(v));
      });
    }
    miniCartData = json['miniCartData'] != null
        ? new MiniCartData.fromJson(json['miniCartData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cartData != null) {
      data['cartData'] = this.cartData!.map((v) => v.toJson()).toList();
    }
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    if (this.priceDetails != null) {
      data['priceDetails'] = this.priceDetails!.map((v) => v.toJson()).toList();
    }
    if (this.healthCardBanner != null) {
      data['HealthCardBanner'] =
          this.healthCardBanner!.map((v) => v.toJson()).toList();
    }
    if (this.miniCartData != null) {
      data['miniCartData'] = this.miniCartData!.toJson();
    }
    return data;
  }
}

class Details {
  int? categoryId;
  String? categoryName;
  String? categoryImage;
  String? overView;
  String? description;
  String? rating;
  int? count;

  Details(
      {this.categoryId,
      this.categoryName,
      this.categoryImage,
      this.overView,
      this.description,
      this.rating,
      this.count});

  Details.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
    overView = json['overView'];
    description = json['description'];
    rating = json['rating'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['categoryImage'] = this.categoryImage;
    data['overView'] = this.overView;
    data['description'] = this.description;
    data['rating'] = this.rating;
    data['count'] = this.count;
    return data;
  }
}

class PriceDetails {
  int? priceId;
  double? visitCharge;
  double? dayCharge;
  double? monthCharge;
  String? gender;

  PriceDetails(
      {this.visitCharge,
      this.priceId,
      this.dayCharge,
      this.monthCharge,
      this.gender});

  PriceDetails.fromJson(Map<String, dynamic> json) {
    priceId = json['priceId'];
    visitCharge = double.tryParse(json['visitCharge'].toString());
    dayCharge = double.tryParse(json['dayCharge'].toString());
    monthCharge = double.tryParse(json['monthCharge'].toString());
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['priceId'] = this.priceId;
    data['visitCharge'] = this.visitCharge;
    data['dayCharge'] = this.dayCharge;
    data['monthCharge'] = this.monthCharge;
    data['gender'] = this.gender;
    return data;
  }
}

class HealthCardBanner {
  String? image;
  String? bannerTitle;

  HealthCardBanner({this.image, this.bannerTitle});

  HealthCardBanner.fromJson(Map<String, dynamic> json) {
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

class MiniCartData {
  int? cartCount;
  double? cartAmount;
  List<CartInfo>? cartInfo;

  MiniCartData({this.cartCount, this.cartAmount, this.cartInfo});

  MiniCartData.fromJson(Map<String, dynamic> json) {
    cartCount = json['cartCount'];
    cartAmount = double.tryParse(json['cartAmount'].toString());
    if (json['cartInfo'] != null) {
      cartInfo = <CartInfo>[];
      json['cartInfo'].forEach((v) {
        cartInfo!.add(new CartInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cartCount'] = this.cartCount;
    data['cartAmount'] = this.cartAmount;
    if (this.cartInfo != null) {
      data['cartInfo'] = this.cartInfo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CartInfo {
  int? mpCartId;
  int? mpCartUserId;
  int? mpCartProductId;
  int? mpCartPriceId;
  String? mpCartPeriodType;
  int? mpCartProductQuantity;
  int? mpCartPeriodCount;
  String? mpCartFromDate;
  String? mpCartTillDate;
  String? mpCartInstruction;
  int? mpCartCityId;
  String? mpCartStatus;
  int? mppmId;
  int? mppmSubCatId;
  double? mppmVisitRate;
  double? mppmDaysRate;
  double? mppmMonthRate;
  String? mppmGender;
  int? mppmCityId;
  String? mppmStatus;

  CartInfo(
      {this.mpCartId,
      this.mpCartUserId,
      this.mpCartProductId,
      this.mpCartPriceId,
      this.mpCartPeriodType,
      this.mpCartProductQuantity,
      this.mpCartPeriodCount,
      this.mpCartFromDate,
      this.mpCartTillDate,
      this.mpCartInstruction,
      this.mpCartCityId,
      this.mpCartStatus,
      this.mppmId,
      this.mppmSubCatId,
      this.mppmVisitRate,
      this.mppmDaysRate,
      this.mppmMonthRate,
      this.mppmGender,
      this.mppmCityId,
      this.mppmStatus});

  CartInfo.fromJson(Map<String, dynamic> json) {
    mpCartId = json['mp_cart_id'];
    mpCartUserId = json['mp_cart_user_id'];
    mpCartProductId = json['mp_cart_product_id'];
    mpCartPriceId = json['mp_cart_price_id'];
    mpCartPeriodType = json['mp_cart_period_type'];
    mpCartProductQuantity = json['mp_cart_product_quantity'];
    mpCartPeriodCount = json['mp_cart_period_count'];
    mpCartFromDate = json['mp_cart_from_date'];
    mpCartTillDate = json['mp_cart_till_date'];
    mpCartInstruction = json['mp_cart_instruction'];
    mpCartCityId = json['mp_cart_city_id'];
    mpCartStatus = json['mp_cart_status'];
    mppmId = json['mppm_id'];
    mppmSubCatId = json['mppm_sub_cat_id'];
    mppmVisitRate = double.tryParse(json['mppm_visit_rate'].toString());
    mppmDaysRate = double.tryParse(json['mppm_days_rate'].toString());
    mppmMonthRate = double.tryParse(json['mppm_month_rate'].toString());
    mppmGender = json['mppm_gender'];
    mppmCityId = json['mppm_city_id'];
    mppmStatus = json['mppm_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mp_cart_id'] = this.mpCartId;
    data['mp_cart_user_id'] = this.mpCartUserId;
    data['mp_cart_product_id'] = this.mpCartProductId;
    data['mp_cart_price_id'] = this.mpCartPriceId;
    data['mp_cart_period_type'] = this.mpCartPeriodType;
    data['mp_cart_product_quantity'] = this.mpCartProductQuantity;
    data['mp_cart_period_count'] = this.mpCartPeriodCount;
    data['mp_cart_from_date'] = this.mpCartFromDate;
    data['mp_cart_till_date'] = this.mpCartTillDate;
    data['mp_cart_instruction'] = this.mpCartInstruction;
    data['mp_cart_city_id'] = this.mpCartCityId;
    data['mp_cart_status'] = this.mpCartStatus;
    data['mppm_id'] = this.mppmId;
    data['mppm_sub_cat_id'] = this.mppmSubCatId;
    data['mppm_visit_rate'] = this.mppmVisitRate;
    data['mppm_days_rate'] = this.mppmDaysRate;
    data['mppm_month_rate'] = this.mppmMonthRate;
    data['mppm_gender'] = this.mppmGender;
    data['mppm_city_id'] = this.mppmCityId;
    data['mppm_status'] = this.mppmStatus;
    return data;
  }
}

class CartData {
  int? priceId;
  String? productType;
  int? productQuantity;
  int? duration;
  String? gender;

  CartData(
      {this.priceId,
      this.gender,
      this.productType,
      this.productQuantity,
      this.duration});

  CartData.fromJson(Map<String, dynamic> json) {
    priceId = json['priceId'];
    productType = json['productType'];
    productQuantity = json['productQuantity'];
    duration = json['Duration'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['priceId'] = this.priceId;
    data['productType'] = this.productType;
    data['productQuantity'] = this.productQuantity;
    data['Duration'] = this.duration;
    data['gender'] = this.gender;
    return data;
  }
}
