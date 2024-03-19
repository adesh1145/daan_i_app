class FaqsDetailsResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  FaqsDetailsResp({this.result, this.status, this.message, this.jSONData});

  FaqsDetailsResp.fromJson(Map<String, dynamic> json) {
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
  List<TitleList>? titleList;

  JSONData({this.titleList});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['title_list'] != null) {
      titleList = <TitleList>[];
      json['title_list'].forEach((v) {
        titleList!.add(new TitleList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.titleList != null) {
      data['title_list'] = this.titleList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TitleList {
  String? faqListId;
  String? faqCategoryId;
  String? faqCategoryName;
  String? faqListTitle;
  List<DescriptionList>? descriptionList;

  TitleList(
      {this.faqListId,
        this.faqCategoryId,
        this.faqCategoryName,
        this.faqListTitle,
        this.descriptionList});

  TitleList.fromJson(Map<String, dynamic> json) {
    faqListId = json['faq_list_id'];
    faqCategoryId = json['faq_category_id'];
    faqCategoryName = json['faq_category_name'];
    faqListTitle = json['faq_list_title'];
    if (json['description_list'] != null) {
      descriptionList = <DescriptionList>[];
      json['description_list'].forEach((v) {
        descriptionList!.add(new DescriptionList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['faq_list_id'] = this.faqListId;
    data['faq_category_id'] = this.faqCategoryId;
    data['faq_category_name'] = this.faqCategoryName;
    data['faq_list_title'] = this.faqListTitle;
    if (this.descriptionList != null) {
      data['description_list'] =
          this.descriptionList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DescriptionList {
  int? faqDescriptionId;
  String? faqDescriptionDetail;

  DescriptionList({this.faqDescriptionId, this.faqDescriptionDetail});

  DescriptionList.fromJson(Map<String, dynamic> json) {
    faqDescriptionId = json['faq_description_id'];
    faqDescriptionDetail = json['faq_description_detail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['faq_description_id'] = this.faqDescriptionId;
    data['faq_description_detail'] = this.faqDescriptionDetail;
    return data;
  }
}
