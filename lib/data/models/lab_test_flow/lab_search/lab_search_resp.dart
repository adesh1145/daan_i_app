class LabSearchResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  LabSearchResp({this.result, this.status, this.message, this.jSONData});

  LabSearchResp.fromJson(Map<String, dynamic> json) {
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
  List<TestList>? testList;
  CartData? cartData;

  JSONData({this.testList, this.cartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['testList'] != null) {
      testList = <TestList>[];
      json['testList'].forEach((v) {
        testList!.add(new TestList.fromJson(v));
      });
    }
    cartData = json['cartData'] != null
        ? new CartData.fromJson(json['cartData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.testList != null) {
      data['testList'] = this.testList!.map((v) => v.toJson()).toList();
    }
    if (this.cartData != null) {
      data['cartData'] = this.cartData!.toJson();
    }
    return data;
  }
}

class TestList {
  int? testId;
  String? testName;
  String? countOfTestInclude;
  String? packageDescription;
  int? priceId;
  String? currentPrice;
  String? actualPrice;
  int? discountPercentage;
  String? image;

  TestList(
      {this.testId,
      this.testName,
      this.countOfTestInclude,
      this.packageDescription,
      this.priceId,
      this.currentPrice,
      this.actualPrice,
      this.discountPercentage,
      this.image});

  TestList.fromJson(Map<String, dynamic> json) {
    testId = json['testId'];
    testName = json['testName'];
    countOfTestInclude = json['countOfTestInclude'];
    packageDescription = json['packageDescription'];
    priceId = json['priceId'];
    currentPrice = json['currentPrice'];
    actualPrice = json['actualPrice'];
    discountPercentage = json['discountPercentage'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['testId'] = this.testId;
    data['testName'] = this.testName;
    data['countOfTestInclude'] = this.countOfTestInclude;
    data['packageDescription'] = this.packageDescription;
    data['priceId'] = this.priceId;
    data['currentPrice'] = this.currentPrice;
    data['actualPrice'] = this.actualPrice;
    data['discountPercentage'] = this.discountPercentage;
    data['image'] = this.image;
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
