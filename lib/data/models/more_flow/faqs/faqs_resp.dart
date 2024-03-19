class FaqsScreenResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  FaqsScreenResp({this.result, this.status, this.message, this.jSONData});

  FaqsScreenResp.fromJson(Map<String, dynamic> json) {
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
  List<CategoryList>? categoryList;

  JSONData({this.categoryList});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['category_list'] != null) {
      categoryList = <CategoryList>[];
      json['category_list'].forEach((v) {
        categoryList!.add(new CategoryList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categoryList != null) {
      data['category_list'] =
          this.categoryList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryList {
  String? faqCategoryId;
  String? faqCategoryName;

  CategoryList({this.faqCategoryId, this.faqCategoryName});

  CategoryList.fromJson(Map<String, dynamic> json) {
    faqCategoryId = json['faq_category_id'];
    faqCategoryName = json['faq_category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['faq_category_id'] = this.faqCategoryId;
    data['faq_category_name'] = this.faqCategoryName;
    return data;
  }
}
