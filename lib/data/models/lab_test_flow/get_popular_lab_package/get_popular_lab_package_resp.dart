class GetPopularLabPackageResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  GetPopularLabPackageResp(
      {this.result, this.status, this.message, this.jSONData});

  GetPopularLabPackageResp.fromJson(Map<String, dynamic> json) {
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
  List<String>? sortingList;
  CartData? cartData;

  JSONData({this.testList, this.sortingList, this.cartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['testList'] != null) {
      testList = <TestList>[];
      json['testList'].forEach((v) {
        testList!.add(new TestList.fromJson(v));
      });
    }
    sortingList = json['sortingList'].cast<String>();
    cartData = json['cartData'] != null
        ? new CartData.fromJson(json['cartData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.testList != null) {
      data['testList'] = this.testList!.map((v) => v.toJson()).toList();
    }
    data['sortingList'] = this.sortingList;
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
  String? addedToCart;

  TestList(
      {this.testId,
      this.testName,
      this.countOfTestInclude,
      this.packageDescription,
      this.priceId,
      this.currentPrice,
      this.actualPrice,
      this.discountPercentage,
      this.image,
      this.addedToCart});

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
    addedToCart = json['addedToCart'];
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
    data['addedToCart'] = this.addedToCart;
    return data;
  }
}

class CartData {
  int? itemCount;

  CartData({this.itemCount});

  CartData.fromJson(Map<String, dynamic> json) {
    itemCount = json['itemCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemCount'] = this.itemCount;
    return data;
  }
}
