class SelectAirCategoryReq {
  String? consumerId;
  String? enquaryId;
  String? categoryType;
  String? categoryName;
  String? categoryIcon;
  String? arrivalTime;
  String? includes;
  String? authKey;

  SelectAirCategoryReq(
      {this.consumerId,
      this.enquaryId,
      this.categoryType,
      this.categoryName,
      this.categoryIcon,
      this.arrivalTime,
      this.includes,
      this.authKey});

  SelectAirCategoryReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    enquaryId = json['enquary_id'];
    categoryType = json['category_type'];
    categoryName = json['category_name'];
    categoryIcon = json['category_icon'];
    arrivalTime = json['arrival_time'];
    includes = json['includes'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['enquary_id'] = this.enquaryId;
    data['category_type'] = this.categoryType;
    data['category_name'] = this.categoryName;
    data['category_icon'] = this.categoryIcon;
    data['arrival_time'] = this.arrivalTime;
    data['includes'] = this.includes;
    data['auth_key'] = this.authKey;
    return data;
  }
}
