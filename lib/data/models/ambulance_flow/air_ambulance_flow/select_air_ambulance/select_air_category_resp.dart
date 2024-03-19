class SelectAirCategoryResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  SelectAirCategoryResp(
      {this.result, this.status, this.message, this.jSONData});

  SelectAirCategoryResp.fromJson(Map<String, dynamic> json) {
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
  String? airBookingCategoryType;
  String? airBookingCategoryName;
  String? airBookingCategoryIcon;
  String? airBookingAdvAmount;
  String? airBookingAmount;
  String? airBookingArrivalTime;
  String? airBookingIncludes;
  String? enquaryId;
  String? category;
  String? source;
  String? consumerId;
  String? cName;
  String? cMobile;
  String? pickupAddress;
  String? dropAddress;
  String? pickLat;
  String? pickLong;
  String? dropLat;
  String? dropLong;
  String? duration;
  String? polyline;
  String? schudleTime;

  JSONData(
      {this.airBookingCategoryType,
      this.airBookingCategoryName,
      this.airBookingCategoryIcon,
      this.airBookingAdvAmount,
      this.airBookingAmount,
      this.airBookingArrivalTime,
      this.airBookingIncludes,
      this.enquaryId,
      this.category,
      this.source,
      this.consumerId,
      this.cName,
      this.cMobile,
      this.pickupAddress,
      this.dropAddress,
      this.pickLat,
      this.pickLong,
      this.dropLat,
      this.dropLong,
      this.duration,
      this.polyline,
      this.schudleTime});

  JSONData.fromJson(Map<String, dynamic> json) {
    airBookingCategoryType = json['air_booking_category_type'];
    airBookingCategoryName = json['air_booking_category_name'];
    airBookingCategoryIcon = json['air_booking_category_icon'];
    airBookingAdvAmount = json['air_booking_adv_amount'];
    airBookingAmount = json['air_booking_amount'];
    airBookingArrivalTime = json['air_booking_arrival_time'];
    airBookingIncludes = json['air_booking_includes'];
    enquaryId = json['enquary_id'];
    category = json['category'];
    source = json['source'];
    consumerId = json['consumer_id'];
    cName = json['c_name'];
    cMobile = json['c_mobile'];
    pickupAddress = json['pickup_address'];
    dropAddress = json['drop_address'];
    pickLat = json['pick_lat'];
    pickLong = json['pick_long'];
    dropLat = json['drop_lat'];
    dropLong = json['drop_long'];
    duration = json['duration'];
    polyline = json['polyline'];
    schudleTime = json['schudle_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['air_booking_category_type'] = this.airBookingCategoryType;
    data['air_booking_category_name'] = this.airBookingCategoryName;
    data['air_booking_category_icon'] = this.airBookingCategoryIcon;
    data['air_booking_adv_amount'] = this.airBookingAdvAmount;
    data['air_booking_amount'] = this.airBookingAmount;
    data['air_booking_arrival_time'] = this.airBookingArrivalTime;
    data['air_booking_includes'] = this.airBookingIncludes;
    data['enquary_id'] = this.enquaryId;
    data['category'] = this.category;
    data['source'] = this.source;
    data['consumer_id'] = this.consumerId;
    data['c_name'] = this.cName;
    data['c_mobile'] = this.cMobile;
    data['pickup_address'] = this.pickupAddress;
    data['drop_address'] = this.dropAddress;
    data['pick_lat'] = this.pickLat;
    data['pick_long'] = this.pickLong;
    data['drop_lat'] = this.dropLat;
    data['drop_long'] = this.dropLong;
    data['duration'] = this.duration;
    data['polyline'] = this.polyline;
    data['schudle_time'] = this.schudleTime;
    return data;
  }
}
