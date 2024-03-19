class LabTestDetailResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  LabTestDetailResp({this.result, this.status, this.message, this.jSONData});

  LabTestDetailResp.fromJson(Map<String, dynamic> json) {
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
  TestDetails? testDetails;
  List<TestList>? testList;
  List<Null>? reviewList;
  CartData? cartData;
  List<BannerList>? bannerList;

  JSONData(
      {this.testDetails,
      this.testList,
      this.reviewList,
      this.cartData,
      this.bannerList});

  JSONData.fromJson(Map<String, dynamic> json) {
    testDetails = json['testDetails'] != null
        ? new TestDetails.fromJson(json['testDetails'])
        : null;
    if (json['testList'] != null) {
      testList = <TestList>[];
      json['testList'].forEach((v) {
        testList!.add(new TestList.fromJson(v));
      });
    }

    cartData = json['cart_data'] != null
        ? new CartData.fromJson(json['cart_data'])
        : null;
    if (json['bannerList'] != null) {
      bannerList = <BannerList>[];
      json['bannerList'].forEach((v) {
        bannerList!.add(new BannerList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.testDetails != null) {
      data['testDetails'] = this.testDetails!.toJson();
    }
    if (this.testList != null) {
      data['testList'] = this.testList!.map((v) => v.toJson()).toList();
    }

    if (this.cartData != null) {
      data['cart_data'] = this.cartData!.toJson();
    }
    if (this.bannerList != null) {
      data['bannerList'] = this.bannerList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TestDetails {
  int? testId;
  String? testName;
  String? countOfTestInclude;
  String? labTestType;
  String? packageShortDescription;
  String? packageLongDescription;
  String? precaution;
  int? priceId;
  String? currentPrice;
  String? actualPrice;
  int? discountPercentage;
  String? sampleType;
  int? resultDuration;
  String? gender;
  String? image;
  String? addedToCart;
  String? testType;

  TestDetails(
      {this.testId,
      this.testName,
      this.countOfTestInclude,
      this.labTestType,
      this.packageShortDescription,
      this.packageLongDescription,
      this.precaution,
      this.priceId,
      this.currentPrice,
      this.actualPrice,
      this.discountPercentage,
      this.sampleType,
      this.resultDuration,
      this.gender,
      this.image,
      this.testType,
      this.addedToCart});

  TestDetails.fromJson(Map<String, dynamic> json) {
    testId = json['testId'];
    testName = json['testName'];
    countOfTestInclude = json['countOfTestInclude'];
    labTestType = json['labTestType'];
    packageShortDescription = json['packageShortDescription'];
    packageLongDescription = json['packageLongDescription'];
    precaution = json['precaution'];
    priceId = json['priceId'];
    currentPrice = json['currentPrice'];
    actualPrice = json['actualPrice'];
    discountPercentage = json['discountPercentage'];
    sampleType = json['sampleType'];
    resultDuration = json['resultDuration'];
    gender = json['gender'];
    image = json['image'];
    addedToCart = json['addedToCart'];
    testType = json['testType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['testId'] = this.testId;
    data['testName'] = this.testName;
    data['countOfTestInclude'] = this.countOfTestInclude;
    data['labTestType'] = this.labTestType;
    data['packageShortDescription'] = this.packageShortDescription;
    data['packageLongDescription'] = this.packageLongDescription;
    data['precaution'] = this.precaution;
    data['priceId'] = this.priceId;
    data['currentPrice'] = this.currentPrice;
    data['actualPrice'] = this.actualPrice;
    data['discountPercentage'] = this.discountPercentage;
    data['sampleType'] = this.sampleType;
    data['resultDuration'] = this.resultDuration;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['addedToCart'] = this.addedToCart;
    data['testType'] = this.testType;
    return data;
  }
}

class TestList {
  String? testName;
  String? testDescription;

  TestList({this.testName, this.testDescription});

  TestList.fromJson(Map<String, dynamic> json) {
    testName = json['testName'];
    testDescription = json['testDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['testName'] = this.testName;
    data['testDescription'] = this.testDescription;
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

class BannerList {
  String? image;
  String? bannerTitle;

  BannerList({this.image, this.bannerTitle});

  BannerList.fromJson(Map<String, dynamic> json) {
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
