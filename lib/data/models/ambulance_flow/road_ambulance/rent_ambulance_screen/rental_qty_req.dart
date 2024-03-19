class RentalQtyReq {
  String? consumerId;
  String? enquaryId;
  String? categoryType;
  String? categoryQt;
  String? distance;
  String? authKey;

  RentalQtyReq(
      {this.consumerId,
        this.enquaryId,
        this.categoryType,
        this.categoryQt,
        this.distance,
        this.authKey});

  RentalQtyReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    enquaryId = json['enquary_id'];
    categoryType = json['category_type'];
    categoryQt = json['category_qt'];
    distance = json['distance'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['enquary_id'] = this.enquaryId;
    data['category_type'] = this.categoryType;
    data['category_qt'] = this.categoryQt;
    data['distance'] = this.distance;
    data['auth_key'] = this.authKey;
    return data;
  }
}
