class RentalQtyResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  RentalQtyResp({this.result, this.status, this.message, this.jSONData});

  RentalQtyResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    if (json['JSONData'] != null) {
      jSONData = <JSONData>[];
      json['JSONData'].forEach((v) {
        jSONData!.add(new JSONData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  String? pickupAddress;
  String? enquaryId;
  String? categoryType;
  String? categoryName;
  String? categoryIcon;
  String? bookingType;
  String? bookingTypeName;
  String? baseRate;
  String? kmTill;
  String? rateServiceCharge;
  String? distance;
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
  String? includesTxt;
  String? currencySymbol;
  String? categoryCount;
  List<FacilitiesList>? facilitiesList;
  List<CaseLikeList>? caseLikeList;

  JSONData(
      {this.pickupAddress,
        this.enquaryId,
        this.categoryType,
        this.categoryName,
        this.categoryIcon,
        this.bookingType,
        this.bookingTypeName,
        this.baseRate,
        this.kmTill,
        this.rateServiceCharge,
        this.distance,
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
        this.includesTxt,
        this.currencySymbol,
        this.categoryCount,
        this.facilitiesList,
        this.caseLikeList});

  JSONData.fromJson(Map<String, dynamic> json) {
    pickupAddress = json['pickup_address'];
    enquaryId = json['enquary_id'];
    categoryType = json['category_type'];
    categoryName = json['category_name'];
    categoryIcon = json['category_icon'];
    bookingType = json['booking_type'];
    bookingTypeName = json['booking_type_name'];
    baseRate = json['base_rate'];
    kmTill = json['km_till'];
    rateServiceCharge = json['rate_service_charge'];
    distance = json['distance'];
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
    includesTxt = json['includes_txt'];
    currencySymbol = json['currency_symbol'];
    categoryCount = json['category_count'];
    if (json['facilities_list'] != null) {
      facilitiesList = <FacilitiesList>[];
      json['facilities_list'].forEach((v) {
        facilitiesList!.add(new FacilitiesList.fromJson(v));
      });
    }
    if (json['case_like_list'] != null) {
      caseLikeList = <CaseLikeList>[];
      json['case_like_list'].forEach((v) {
        caseLikeList!.add(new CaseLikeList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pickup_address'] = this.pickupAddress;
    data['enquary_id'] = this.enquaryId;
    data['category_type'] = this.categoryType;
    data['category_name'] = this.categoryName;
    data['category_icon'] = this.categoryIcon;
    data['booking_type'] = this.bookingType;
    data['booking_type_name'] = this.bookingTypeName;
    data['base_rate'] = this.baseRate;
    data['km_till'] = this.kmTill;
    data['rate_service_charge'] = this.rateServiceCharge;
    data['distance'] = this.distance;
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
    data['includes_txt'] = this.includesTxt;
    data['currency_symbol'] = this.currencySymbol;
    data['category_count'] = this.categoryCount;
    if (this.facilitiesList != null) {
      data['facilities_list'] =
          this.facilitiesList!.map((v) => v.toJson()).toList();
    }
    if (this.caseLikeList != null) {
      data['case_like_list'] =
          this.caseLikeList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FacilitiesList {
  String? facilitiesName;
  String? facilitiesImage;

  FacilitiesList({this.facilitiesName, this.facilitiesImage});

  FacilitiesList.fromJson(Map<String, dynamic> json) {
    facilitiesName = json['facilities_name'];
    facilitiesImage = json['facilities_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['facilities_name'] = this.facilitiesName;
    data['facilities_image'] = this.facilitiesImage;
    return data;
  }
}

class CaseLikeList {
  String? caseCatType;
  String? caseLike;

  CaseLikeList({this.caseCatType, this.caseLike});

  CaseLikeList.fromJson(Map<String, dynamic> json) {
    caseCatType = json['case_cat_type'];
    caseLike = json['case_like'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['case_cat_type'] = this.caseCatType;
    data['case_like'] = this.caseLike;
    return data;
  }
}
