class MpPlpResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MpPlpResp({this.result, this.status, this.message, this.jSONData});

  MpPlpResp.fromJson(Map<String, dynamic> json) {
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
  List<List1>? list;
  MiniCartData? miniCartData;

  JSONData({this.list, this.miniCartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list = <List1>[];
      json['list'].forEach((v) {
        list!.add(new List1.fromJson(v));
      });
    }
    miniCartData = json['miniCartData'] != null
        ? new MiniCartData.fromJson(json['miniCartData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list!.map((v) => v.toJson()).toList();
    }
    if (this.miniCartData != null) {
      data['miniCartData'] = this.miniCartData!.toJson();
    }
    return data;
  }
}

class List1 {
  int? categoryId;
  String? categoryName;
  String? categoryImage;
  String? description;
  String? rating;
  int? count;

  List1(
      {this.categoryId,
      this.categoryName,
      this.categoryImage,
      this.description,
      this.rating,
      this.count});

  List1.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
    description = json['description'];
    rating = json['rating'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['categoryImage'] = this.categoryImage;
    data['description'] = this.description;
    data['rating'] = this.rating;
    data['count'] = this.count;
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
