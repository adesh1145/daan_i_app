class CategoryListResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  CategoryListResp({this.result, this.status, this.message, this.jSONData});

  CategoryListResp.fromJson(Map<String, dynamic> json) {
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
  String? labCategoryType;
  int? lcStatus;
  String? categoryAddedDate;

  TestCategoryList(
      {this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcCategoryDesc,
      this.labCategoryType,
      this.lcStatus,
      this.categoryAddedDate});

  TestCategoryList.fromJson(Map<String, dynamic> json) {
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcCategoryDesc = json['lc_category_desc'];
    labCategoryType = json['lab_category_type'];
    lcStatus = json['lc_status'];
    categoryAddedDate = json['category_added_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_category_desc'] = this.lcCategoryDesc;
    data['lab_category_type'] = this.labCategoryType;
    data['lc_status'] = this.lcStatus;
    data['category_added_date'] = this.categoryAddedDate;
    return data;
  }
}

class CartData {
  int? totalItem;

  CartData({this.totalItem});

  CartData.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_item'] = this.totalItem;
    return data;
  }
}
