class MedicineSubCategoryReq {
  String? cityName;
  String? userId;
  String? authKey;
  String? categoryId;
  String? levelId;
  int? slotValue;
  int? pageNo;

  MedicineSubCategoryReq(
      {this.cityName,
      this.userId,
      this.authKey,
      this.categoryId,
      this.levelId,
      this.slotValue,
      this.pageNo});

  MedicineSubCategoryReq.fromJson(Map<String, dynamic> json) {
    cityName = json['cityName'];
    userId = json['userId'];
    authKey = json['authKey'];
    categoryId = json['categoryId'];
    levelId = json['levelId'];
    slotValue = json['slotValue'];
    pageNo = json['pageNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cityName'] = this.cityName;
    data['userId'] = this.userId;
    data['authKey'] = this.authKey;
    data['categoryId'] = this.categoryId;
    data['levelId'] = this.levelId;
    data['slotValue'] = this.slotValue;
    data['pageNo'] = this.pageNo;
    return data;
  }
}
