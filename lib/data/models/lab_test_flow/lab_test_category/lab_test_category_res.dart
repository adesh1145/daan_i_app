class LabCategoryRes {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  LabCategoryRes({this.result, this.status, this.message, this.jSONData});

  LabCategoryRes.fromJson(Map<String, dynamic> json) {
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
  String? title3;
  List<TestCategoryList>? testCategoryList;
  String? title8;
  CartData? cartData;

  JSONData({this.title3, this.testCategoryList, this.title8, this.cartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    title3 = json['title3'];
    if (json['test_category_list'] != null) {
      testCategoryList = <TestCategoryList>[];
      json['test_category_list'].forEach((v) {
        testCategoryList!.add(new TestCategoryList.fromJson(v));
      });
    }
    title8 = json['title8'];
    cartData = json['cart_data'] != null
        ? new CartData.fromJson(json['cart_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title3'] = this.title3;
    if (this.testCategoryList != null) {
      data['test_category_list'] =
          this.testCategoryList!.map((v) => v.toJson()).toList();
    }
    data['title8'] = this.title8;
    if (this.cartData != null) {
      data['cart_data'] = this.cartData!.toJson();
    }
    return data;
  }
}

class TestCategoryList {
  int? labCategoryId;
  String? lcCategoryName;
  String? lcCategoryAddedBy;
  String? lcCategoryImage;
  String? lcCategoryDesc;
  int? lcStatus;

  TestCategoryList(
      {this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcCategoryDesc,
      this.lcStatus});

  TestCategoryList.fromJson(Map<String, dynamic> json) {
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcCategoryDesc = json['lc_category_desc'];
    lcStatus = json['lc_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_category_desc'] = this.lcCategoryDesc;
    data['lc_status'] = this.lcStatus;
    return data;
  }
}

class CartData {
  String? totalItem;
  String? totalPrice;
  String? totalOfferedPrice;
  String? currencySymbol;
  String? countMsg;

  CartData(
      {this.totalItem,
      this.totalPrice,
      this.totalOfferedPrice,
      this.currencySymbol,
      this.countMsg});

  CartData.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
    totalPrice = json['total_price'];
    totalOfferedPrice = json['total_offered_price'];
    currencySymbol = json['currencySymbol'];
    countMsg = json['count_msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_item'] = this.totalItem;
    data['total_price'] = this.totalPrice;
    data['total_offered_price'] = this.totalOfferedPrice;
    data['currencySymbol'] = this.currencySymbol;
    data['count_msg'] = this.countMsg;
    return data;
  }
}
