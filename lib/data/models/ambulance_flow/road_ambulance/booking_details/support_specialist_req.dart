class SupportSpecialistReq {
  String? consumerId;
  String? enquaryId;
  String? specialistsId;
  String? categoryType;
  String? specialistsName;
  String? specialistsAmount;
  String? action;
  String? authKey;

  SupportSpecialistReq(
      {this.consumerId,
      this.enquaryId,
      this.specialistsId,
      this.categoryType,
      this.specialistsName,
      this.specialistsAmount,
      this.action,
      this.authKey});

  SupportSpecialistReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    enquaryId = json['enquary_id'];
    specialistsId = json['specialists_id'];
    categoryType = json['category_type'];
    specialistsName = json['specialists_name'];
    specialistsAmount = json['specialists_amount'];
    action = json['action'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['enquary_id'] = this.enquaryId;
    data['specialists_id'] = this.specialistsId;
    data['category_type'] = this.categoryType;
    data['specialists_name'] = this.specialistsName;
    data['specialists_amount'] = this.specialistsAmount;
    data['action'] = this.action;
    data['auth_key'] = this.authKey;
    return data;
  }
}
