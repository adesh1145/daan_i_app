class OngoingBookingResp {
  String? result;
  String? status;
  String? message;
  String? text;
  List<JSONData>? jSONData;

  OngoingBookingResp(
      {this.result, this.status, this.message, this.text, this.jSONData});

  OngoingBookingResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    text = json['text'];
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
    data['text'] = this.text;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  List<BookingDetails>? bookingDetails;
  List<SpecialistListRate>? specialistListRate;
  LiveLocationDetails? liveLocationDetails;

  JSONData(
      {this.bookingDetails, this.specialistListRate, this.liveLocationDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['booking_details'] != null) {
      bookingDetails = <BookingDetails>[];
      json['booking_details'].forEach((v) {
        bookingDetails!.add(new BookingDetails.fromJson(v));
      });
    }
    if (json['specialist_list_rate'] != null) {
      specialistListRate = <SpecialistListRate>[];
      json['specialist_list_rate'].forEach((v) {
        specialistListRate!.add(new SpecialistListRate.fromJson(v));
      });
    }
    liveLocationDetails = json['live_location_details'] != null
        ? new LiveLocationDetails.fromJson(json['live_location_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bookingDetails != null) {
      data['booking_details'] =
          this.bookingDetails!.map((v) => v.toJson()).toList();
    }
    if (this.specialistListRate != null) {
      data['specialist_list_rate'] =
          this.specialistListRate!.map((v) => v.toJson()).toList();
    }
    if (this.liveLocationDetails != null) {
      data['live_location_details'] = this.liveLocationDetails!.toJson();
    }
    return data;
  }
}

class BookingDetails {
  String? enquaryId;
  String? bookingType;
  String? source;
  String? consumerId;
  String? otp;
  String? otpStatus;
  String? otpStatusDevTxt;
  String? cName;
  String? cMobile;
  String? pickupAddress;
  String? dropAddress;
  String? pickLat;
  String? pickLong;
  String? dropLat;
  String? dropLong;
  String? distance;
  String? duration;
  String? poliline;
  String? schudleTime;
  String? bookingStatus;
  String? bookingStatusDevTxt;
  String? bookingDriverId;
  String? bookingDriverName;
  String? bookingDriverImage;
  String? bookingDriverMobile;
  String? bookingVehicleId;
  String? bookingVehicleRcNo;
  String? bookingCategoryType;
  String? bookingCategoryIcon;
  String? bookingCategoryName;
  String? bookingAcceptLat;
  String? bookingAcceptLong;
  String? accToPickPolilyne;
  String? accToPickDuration;
  String? accToPickDistance;
  String? bookingTotalRide;
  String? bookingDriverRating;
  String? paymentMethod;
  String? paymentMethodDevTxt;
  String? paymentType;
  String? paymentTypeDevTxt;
  String? amount;
  String? advanceAmount;
  String? totalAmount;
  String? serviceCharge;
  String? gstCharge;
  String? currencySymbol;
  String? gstPercentage;
  String? paymentStatus;
  String? paymentStatusDevTxt;
  String? includes;
  String? remainingAmount;
  String? refundAmount;
  String? cancellectionCharge;
  String? driverTotalRides;
  String? extraKm;
  String? extraKmRate;
  String? extraKmRateTotal;
  String? extraTime;
  String? extraTimeRate;
  String? extraTimeRateTotal;
  String? specialistCost;
  String? discountAmount;

  BookingDetails(
      {this.enquaryId,
        this.bookingType,
        this.source,
        this.consumerId,
        this.otp,
        this.otpStatus,
        this.otpStatusDevTxt,
        this.cName,
        this.cMobile,
        this.pickupAddress,
        this.dropAddress,
        this.pickLat,
        this.pickLong,
        this.dropLat,
        this.dropLong,
        this.distance,
        this.duration,
        this.poliline,
        this.schudleTime,
        this.bookingStatus,
        this.bookingStatusDevTxt,
        this.bookingDriverId,
        this.bookingDriverName,
        this.bookingDriverImage,
        this.bookingDriverMobile,
        this.bookingVehicleId,
        this.bookingVehicleRcNo,
        this.bookingCategoryType,
        this.bookingCategoryIcon,
        this.bookingCategoryName,
        this.bookingAcceptLat,
        this.bookingAcceptLong,
        this.accToPickPolilyne,
        this.accToPickDuration,
        this.accToPickDistance,
        this.bookingTotalRide,
        this.bookingDriverRating,
        this.paymentMethod,
        this.paymentMethodDevTxt,
        this.paymentType,
        this.paymentTypeDevTxt,
        this.amount,
        this.advanceAmount,
        this.totalAmount,
        this.serviceCharge,
        this.gstCharge,
        this.currencySymbol,
        this.gstPercentage,
        this.paymentStatus,
        this.paymentStatusDevTxt,
        this.includes,
        this.remainingAmount,
        this.refundAmount,
        this.cancellectionCharge,
        this.driverTotalRides,
        this.extraKm,
        this.extraKmRate,
        this.extraKmRateTotal,
        this.extraTime,
        this.extraTimeRate,
        this.extraTimeRateTotal,
        this.specialistCost,
        this.discountAmount});

  BookingDetails.fromJson(Map<String, dynamic> json) {
    enquaryId = json['enquary_id'];
    bookingType = json['booking_type'];
    source = json['source'];
    consumerId = json['consumer_id'];
    otp = json['otp'];
    otpStatus = json['otp_status'];
    otpStatusDevTxt = json['otp_status_dev_txt'];
    cName = json['c_name'];
    cMobile = json['c_mobile'];
    pickupAddress = json['pickup_address'];
    dropAddress = json['drop_address'];
    pickLat = json['pick_lat'];
    pickLong = json['pick_long'];
    dropLat = json['drop_lat'];
    dropLong = json['drop_long'];
    distance = json['distance'];
    duration = json['duration'];
    poliline = json['poliline'];
    schudleTime = json['schudle_time'];
    bookingStatus = json['booking_status'];
    bookingStatusDevTxt = json['booking_status_dev_txt'];
    bookingDriverId = json['booking_driver_id'];
    bookingDriverName = json['booking_driver_name'];
    bookingDriverImage = json['booking_driver_image'];
    bookingDriverMobile = json['booking_driver_mobile'];
    bookingVehicleId = json['booking_vehicle_id'];
    bookingVehicleRcNo = json['booking_vehicle_rc_no'];
    bookingCategoryType = json['booking_category_type'];
    bookingCategoryIcon = json['booking_category_icon'];
    bookingCategoryName = json['booking_category_name'];
    bookingAcceptLat = json['booking_accept_lat'];
    bookingAcceptLong = json['booking_accept_long'];
    accToPickPolilyne = json['acc_to_pick_polilyne'];
    accToPickDuration = json['acc_to_pick_duration'];
    accToPickDistance = json['acc_to_pick_distance'];
    bookingTotalRide = json['booking_total_ride'];
    bookingDriverRating = json['booking_driver_rating'];
    paymentMethod = json['payment_method'];
    paymentMethodDevTxt = json['payment_method_dev_txt'];
    paymentType = json['payment_type'];
    paymentTypeDevTxt = json['payment_type_dev_txt'];
    amount = json['amount'];
    advanceAmount = json['advance_amount'];
    totalAmount = json['total_amount'];
    serviceCharge = json['service_charge'];
    gstCharge = json['gst_charge'];
    currencySymbol = json['currency_symbol'];
    gstPercentage = json['gst_percentage'];
    paymentStatus = json['payment_status'];
    paymentStatusDevTxt = json['payment_status_dev_txt'];
    includes = json['includes'];
    remainingAmount = json['remaining_amount'];
    refundAmount = json['refund_amount'];
    cancellectionCharge = json['cancellection_charge'];
    driverTotalRides = json['driver_total_rides'];
    extraKm = json['extra_km'];
    extraKmRate = json['extra_km_rate'];
    extraKmRateTotal = json['extra_km_rate_total'];
    extraTime = json['extra_time'];
    extraTimeRate = json['extra_time_rate'];
    extraTimeRateTotal = json['extra_time_rate_total'];
    specialistCost = json['specialist_cost'];
    discountAmount = json['discount_Amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enquary_id'] = this.enquaryId;
    data['booking_type'] = this.bookingType;
    data['source'] = this.source;
    data['consumer_id'] = this.consumerId;
    data['otp'] = this.otp;
    data['otp_status'] = this.otpStatus;
    data['otp_status_dev_txt'] = this.otpStatusDevTxt;
    data['c_name'] = this.cName;
    data['c_mobile'] = this.cMobile;
    data['pickup_address'] = this.pickupAddress;
    data['drop_address'] = this.dropAddress;
    data['pick_lat'] = this.pickLat;
    data['pick_long'] = this.pickLong;
    data['drop_lat'] = this.dropLat;
    data['drop_long'] = this.dropLong;
    data['distance'] = this.distance;
    data['duration'] = this.duration;
    data['poliline'] = this.poliline;
    data['schudle_time'] = this.schudleTime;
    data['booking_status'] = this.bookingStatus;
    data['booking_status_dev_txt'] = this.bookingStatusDevTxt;
    data['booking_driver_id'] = this.bookingDriverId;
    data['booking_driver_name'] = this.bookingDriverName;
    data['booking_driver_image'] = this.bookingDriverImage;
    data['booking_driver_mobile'] = this.bookingDriverMobile;
    data['booking_vehicle_id'] = this.bookingVehicleId;
    data['booking_vehicle_rc_no'] = this.bookingVehicleRcNo;
    data['booking_category_type'] = this.bookingCategoryType;
    data['booking_category_icon'] = this.bookingCategoryIcon;
    data['booking_category_name'] = this.bookingCategoryName;
    data['booking_accept_lat'] = this.bookingAcceptLat;
    data['booking_accept_long'] = this.bookingAcceptLong;
    data['acc_to_pick_polilyne'] = this.accToPickPolilyne;
    data['acc_to_pick_duration'] = this.accToPickDuration;
    data['acc_to_pick_distance'] = this.accToPickDistance;
    data['booking_total_ride'] = this.bookingTotalRide;
    data['booking_driver_rating'] = this.bookingDriverRating;
    data['payment_method'] = this.paymentMethod;
    data['payment_method_dev_txt'] = this.paymentMethodDevTxt;
    data['payment_type'] = this.paymentType;
    data['payment_type_dev_txt'] = this.paymentTypeDevTxt;
    data['amount'] = this.amount;
    data['advance_amount'] = this.advanceAmount;
    data['total_amount'] = this.totalAmount;
    data['service_charge'] = this.serviceCharge;
    data['gst_charge'] = this.gstCharge;
    data['currency_symbol'] = this.currencySymbol;
    data['gst_percentage'] = this.gstPercentage;
    data['payment_status'] = this.paymentStatus;
    data['payment_status_dev_txt'] = this.paymentStatusDevTxt;
    data['includes'] = this.includes;
    data['remaining_amount'] = this.remainingAmount;
    data['refund_amount'] = this.refundAmount;
    data['cancellection_charge'] = this.cancellectionCharge;
    data['driver_total_rides'] = this.driverTotalRides;
    data['extra_km'] = this.extraKm;
    data['extra_km_rate'] = this.extraKmRate;
    data['extra_km_rate_total'] = this.extraKmRateTotal;
    data['extra_time'] = this.extraTime;
    data['extra_time_rate'] = this.extraTimeRate;
    data['extra_time_rate_total'] = this.extraTimeRateTotal;
    data['specialist_cost'] = this.specialistCost;
    data['discount_Amount'] = this.discountAmount;
    return data;
  }
}

class SpecialistListRate {
  String? addonsName;
  String? addonsPrice;

  SpecialistListRate({this.addonsName, this.addonsPrice});

  SpecialistListRate.fromJson(Map<String, dynamic> json) {
    addonsName = json['addons_name'];
    addonsPrice = json['addons_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['addons_name'] = this.addonsName;
    data['addons_price'] = this.addonsPrice;
    return data;
  }
}

class LiveLocationDetails {
  List<LiveLocation>? liveLocation;

  LiveLocationDetails({this.liveLocation});

  LiveLocationDetails.fromJson(Map<String, dynamic> json) {
    if (json['live_location'] != null) {
      liveLocation = <LiveLocation>[];
      json['live_location'].forEach((v) {
        liveLocation!.add(new LiveLocation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.liveLocation != null) {
      data['live_location'] =
          this.liveLocation!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LiveLocation {
  int? driverLiveLocationId;
  String? driverLiveLocationDId;
  String? driverLiveLocationLat;
  String? driverLiveLocationLong;
  String? driverLiveLocationUpdatedTime;
  String? updatedAt;
  String? createdAt;
  int? driverLiveLocationStatus;

  LiveLocation(
      {this.driverLiveLocationId,
        this.driverLiveLocationDId,
        this.driverLiveLocationLat,
        this.driverLiveLocationLong,
        this.driverLiveLocationUpdatedTime,
        this.updatedAt,
        this.createdAt,
        this.driverLiveLocationStatus});

  LiveLocation.fromJson(Map<String, dynamic> json) {
    driverLiveLocationId = json['driver_live_location_id'];
    driverLiveLocationDId = json['driver_live_location_d_id'];
    driverLiveLocationLat = json['driver_live_location_lat'];
    driverLiveLocationLong = json['driver_live_location_long'];
    driverLiveLocationUpdatedTime = json['driver_live_location_updated_time'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    driverLiveLocationStatus = json['driver_live_location_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['driver_live_location_id'] = this.driverLiveLocationId;
    data['driver_live_location_d_id'] = this.driverLiveLocationDId;
    data['driver_live_location_lat'] = this.driverLiveLocationLat;
    data['driver_live_location_long'] = this.driverLiveLocationLong;
    data['driver_live_location_updated_time'] =
        this.driverLiveLocationUpdatedTime;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['driver_live_location_status'] = this.driverLiveLocationStatus;
    return data;
  }
}
