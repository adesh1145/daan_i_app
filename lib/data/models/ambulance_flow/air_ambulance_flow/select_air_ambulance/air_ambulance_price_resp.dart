class AirPriceResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  AirPriceResp({this.result, this.status, this.message, this.jSONData});

  AirPriceResp.fromJson(Map<String, dynamic> json) {
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
  BookingDetail? bookingDetail;
  List<CatPrice>? catPrice;

  JSONData({this.bookingDetail, this.catPrice});

  JSONData.fromJson(Map<String, dynamic> json) {
    bookingDetail = json['booking_detail'] != null
        ? new BookingDetail.fromJson(json['booking_detail'])
        : null;
    if (json['cat_price'] != null) {
      catPrice = <CatPrice>[];
      json['cat_price'].forEach((v) {
        catPrice!.add(new CatPrice.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bookingDetail != null) {
      data['booking_detail'] = this.bookingDetail!.toJson();
    }
    if (this.catPrice != null) {
      data['cat_price'] = this.catPrice!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BookingDetail {
  String? pickupAddress;
  String? dropAddress;
  String? enquaryId;
  int? consumerId;
  String? schedule;
  String? includes;
  String? includesTxt;
  String? currencySymbol;
  String? arrivalTime;

  BookingDetail(
      {this.pickupAddress,
      this.dropAddress,
      this.enquaryId,
      this.consumerId,
      this.schedule,
      this.includes,
      this.includesTxt,
      this.currencySymbol,
      this.arrivalTime});

  BookingDetail.fromJson(Map<String, dynamic> json) {
    pickupAddress = json['pickup_address'];
    dropAddress = json['drop_address'];
    enquaryId = json['enquary_id'];
    consumerId = json['consumer_id'];
    schedule = json['schedule'];
    includes = json['includes'];
    includesTxt = json['includes_txt'];
    currencySymbol = json['currency_symbol'];
    arrivalTime = json['arrival_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pickup_address'] = this.pickupAddress;
    data['drop_address'] = this.dropAddress;
    data['enquary_id'] = this.enquaryId;
    data['consumer_id'] = this.consumerId;
    data['schedule'] = this.schedule;
    data['includes'] = this.includes;
    data['includes_txt'] = this.includesTxt;
    data['currency_symbol'] = this.currencySymbol;
    data['arrival_time'] = this.arrivalTime;
    return data;
  }
}

class CatPrice {
  String? categoryType;
  String? categoryName;
  String? categoryPrice;
  String? categoryIcon;
  String? includes;
  String? seates;
  String? arrivalTime;
  String? includesTxt;

  CatPrice(
      {this.categoryType,
      this.categoryName,
      this.categoryPrice,
      this.categoryIcon,
      this.includes,
      this.seates,
      this.arrivalTime,
      this.includesTxt});

  CatPrice.fromJson(Map<String, dynamic> json) {
    categoryType = json['category_type'];
    categoryName = json['category_name'];
    categoryPrice = json['category_price'];
    categoryIcon = json['category_icon'];
    includes = json['includes'];
    seates = json['seates'];
    arrivalTime = json['arrival_time'];
    includesTxt = json['includes_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_type'] = this.categoryType;
    data['category_name'] = this.categoryName;
    data['category_price'] = this.categoryPrice;
    data['category_icon'] = this.categoryIcon;
    data['includes'] = this.includes;
    data['seates'] = this.seates;
    data['arrival_time'] = this.arrivalTime;
    data['includes_txt'] = this.includesTxt;
    return data;
  }
}
