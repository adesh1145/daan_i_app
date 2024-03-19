class LabTestListResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  LabTestListResp({this.result, this.status, this.message, this.jSONData});

  LabTestListResp.fromJson(Map<String, dynamic> json) {
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
  List<ProductList>? productList;
  List<String>? sortingList;
  CartData? cartData;

  JSONData({this.productList, this.sortingList, this.cartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['productList'] != null) {
      productList = <ProductList>[];
      json['productList'].forEach((v) {
        productList!.add(new ProductList.fromJson(v));
      });
    }
    sortingList = json['sortingList'].cast<String>();
    cartData = json['cartData'] != null
        ? new CartData.fromJson(json['cartData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.productList != null) {
      data['productList'] = this.productList!.map((v) => v.toJson()).toList();
    }
    data['sortingList'] = this.sortingList;
    if (this.cartData != null) {
      data['cartData'] = this.cartData!.toJson();
    }
    return data;
  }
}

class ProductList {
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
  int? reOrderedCount;

  ProductList(
      {this.testId,
      this.testName,
      this.countOfTestInclude,
      this.packageDescription,
      this.priceId,
      this.currentPrice,
      this.actualPrice,
      this.discountPercentage,
      this.image,
      this.addedToCart,
      this.reOrderedCount});

  ProductList.fromJson(Map<String, dynamic> json) {
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
    reOrderedCount = json['reOrderedCount'];
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
    data['reOrderedCount'] = this.reOrderedCount;
    return data;
  }
}

class CartData {
  int? totalItem;
  String? totalPrice;
  String? totalOfferedPrice;

  CartData({this.totalItem, this.totalPrice, this.totalOfferedPrice});

  CartData.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
    totalPrice = json['total_price'];
    totalOfferedPrice = json['total_offered_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_item'] = this.totalItem;
    data['total_price'] = this.totalPrice;
    data['total_offered_price'] = this.totalOfferedPrice;
    return data;
  }
}
