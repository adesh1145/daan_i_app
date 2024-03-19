class HealthCategoryWishListReq {
  String? consumerId;
  String? mainCategoryType;
  String? mainCategoryTypeTxt;
  String? sourceId;
  String? authKey;

  HealthCategoryWishListReq(
      {this.consumerId,
      this.mainCategoryType,
      this.mainCategoryTypeTxt,
      this.sourceId,
      this.authKey});

  HealthCategoryWishListReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    mainCategoryType = json['main_category_type'];
    mainCategoryTypeTxt = json['main_category_type_txt'];
    sourceId = json['source_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['main_category_type'] = this.mainCategoryType;
    data['main_category_type_txt'] = this.mainCategoryTypeTxt;
    data['source_id'] = this.sourceId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
