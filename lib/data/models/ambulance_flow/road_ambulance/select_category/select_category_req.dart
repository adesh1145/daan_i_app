class SelectCategoryReq {
  String? consumerId;
  String? enquaryId;
  String? categoryType;
  String? categoryName;
  String? categoryIcon;
  String? baseRate;
  String? kmTill;
  String? perKmRate;
  String? perExtKmRate;
  String? perExtMinRate;
  String? kmRate;
  String? totalFare;
  String? serviceChargeRate;
  String? advanceAmount;
  String? totalBookingAmount;
  String? arrivalTime;
  String? includes;
  String? authKey;

  SelectCategoryReq(
      {this.consumerId,
      this.enquaryId,
      this.categoryType,
      this.categoryName,
      this.categoryIcon,
      this.baseRate,
      this.kmTill,
      this.perKmRate,
      this.perExtKmRate,
      this.perExtMinRate,
      this.kmRate,
      this.totalFare,
      this.serviceChargeRate,
      this.advanceAmount,
      this.totalBookingAmount,
      this.arrivalTime,
      this.includes,
      this.authKey});

  SelectCategoryReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    enquaryId = json['enquary_id'];
    categoryType = json['category_type'];
    categoryName = json['category_name'];
    categoryIcon = json['category_icon'];
    baseRate = json['base_rate'];
    kmTill = json['km_till'];
    perKmRate = json['per_km_rate'];
    perExtKmRate = json['per_ext_km_rate'];
    perExtMinRate = json['per_ext_min_rate'];
    kmRate = json['km_rate'];
    totalFare = json['total_fare'];
    serviceChargeRate = json['service_charge_rate'];
    advanceAmount = json['advance_amount'];
    totalBookingAmount = json['total_booking_amount'];
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
    data['base_rate'] = this.baseRate;
    data['km_till'] = this.kmTill;
    data['per_km_rate'] = this.perKmRate;
    data['per_ext_km_rate'] = this.perExtKmRate;
    data['per_ext_min_rate'] = this.perExtMinRate;
    data['km_rate'] = this.kmRate;
    data['total_fare'] = this.totalFare;
    data['service_charge_rate'] = this.serviceChargeRate;
    data['advance_amount'] = this.advanceAmount;
    data['total_booking_amount'] = this.totalBookingAmount;
    data['arrival_time'] = this.arrivalTime;
    data['includes'] = this.includes;
    data['auth_key'] = this.authKey;
    return data;
  }
}
