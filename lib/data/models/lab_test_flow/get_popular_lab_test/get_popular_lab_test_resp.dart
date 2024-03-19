class GetPopularLabTestResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  GetPopularLabTestResp(
      {this.result, this.status, this.message, this.jSONData});

  GetPopularLabTestResp.fromJson(Map<String, dynamic> json) {
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

  JSONData({this.testList});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['testList'] != null) {
      testList = <TestList>[];
      json['testList'].forEach((v) {
        testList!.add(new TestList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.testList != null) {
      data['testList'] = this.testList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TestList {
  int? testId;
  String? testName;
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
