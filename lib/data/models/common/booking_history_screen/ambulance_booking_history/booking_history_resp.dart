class AmbulanceBookingHistoryResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  AmbulanceBookingHistoryResp(
      {this.result, this.status, this.message, this.jSONData});

  AmbulanceBookingHistoryResp.fromJson(Map<String, dynamic> json) {
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
  List<BookingList>? bookingList;

  JSONData({this.bookingList});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['booking_list'] != null) {
      bookingList = <BookingList>[];
      json['booking_list'].forEach((v) {
        bookingList!.add(new BookingList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bookingList != null) {
      data['booking_list'] = this.bookingList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BookingList {
  String? bookingId;
  String? bookingType;
  String? bookingTypeTxt;
  String? bulkNo;
  String? bulkTotal;
  String? bulckBookingCountTxt;
  String? conName;
  String? conMobile;
  String? category;
  String? scheduleTime;
  String? pickupAddress;
  String? dropAddress;
  String? bookingStatusId;
  String? bookingStatus;
  String? bookingStatusDevText;
  String? distance;
  String? bookingDuration;
  String? totalAmount;
  String? categoryName;
  String? categoryIcon;
  String? assignedDriverId;
  String? assignedDriverName;
  String? assignedDriverImage;
  String? assignedVehicleId;
  String? assignedVehicleNo;
  String? currencySymbol;
  String? bookingOtp;
  String? bookingStatusOtp;
  String? bookingStatusOtpDevTxt;
  String? pickupLat;
  String? pickupLong;
  String? paymentStatus;
  String? paymentStatusTxt;

  BookingList(
      {this.bookingId,
      this.bookingType,
      this.bookingTypeTxt,
      this.bulkNo,
      this.bulkTotal,
      this.bulckBookingCountTxt,
      this.conName,
      this.conMobile,
      this.category,
      this.scheduleTime,
      this.pickupAddress,
      this.dropAddress,
      this.bookingStatusId,
      this.bookingStatus,
      this.bookingStatusDevText,
      this.distance,
      this.bookingDuration,
      this.totalAmount,
      this.categoryName,
      this.categoryIcon,
      this.assignedDriverId,
      this.assignedDriverName,
      this.assignedDriverImage,
      this.assignedVehicleId,
      this.assignedVehicleNo,
      this.currencySymbol,
      this.bookingOtp,
      this.bookingStatusOtp,
      this.bookingStatusOtpDevTxt,
      this.pickupLat,
      this.pickupLong,
      this.paymentStatus,
      this.paymentStatusTxt});

  BookingList.fromJson(Map<String, dynamic> json) {
    bookingId = json['booking_id'];
    bookingType = json['booking_type'];
    bookingTypeTxt = json['booking_type_txt'];
    bulkNo = json['bulk_no'];
    bulkTotal = json['bulk_total'];
    bulckBookingCountTxt = json['bulck_booking_count_txt'];
    conName = json['con_name'];
    conMobile = json['con_mobile'];
    category = json['category'];
    scheduleTime = json['schedule_time'];
    pickupAddress = json['pickup_address'];
    dropAddress = json['drop_address'];
    bookingStatusId = json['booking_status_id'];
    bookingStatus = json['booking_status'];
    bookingStatusDevText = json['booking_status_dev_text'];
    distance = json['distance'];
    bookingDuration = json['booking_duration'];
    totalAmount = json['total_amount'];
    categoryName = json['category_name'];
    categoryIcon = json['category_icon'];
    assignedDriverId = json['Assigned_driver_id'];
    assignedDriverName = json['Assigned_driver_name'];
    assignedDriverImage = json['Assigned_driver_image'];
    assignedVehicleId = json['Assigned_vehicle_id'];
    assignedVehicleNo = json['Assigned_vehicle_no'];
    currencySymbol = json['currency_symbol'];
    bookingOtp = json['booking_otp'];
    bookingStatusOtp = json['booking_status_otp'];
    bookingStatusOtpDevTxt = json['booking_status_otp_dev_txt'];
    pickupLat = json['pickup_lat'];
    pickupLong = json['pickup_long'];
    paymentStatus = json['payment_status'];
    paymentStatusTxt = json['payment_status_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['booking_id'] = this.bookingId;
    data['booking_type'] = this.bookingType;
    data['booking_type_txt'] = this.bookingTypeTxt;
    data['bulk_no'] = this.bulkNo;
    data['bulk_total'] = this.bulkTotal;
    data['bulck_booking_count_txt'] = this.bulckBookingCountTxt;
    data['con_name'] = this.conName;
    data['con_mobile'] = this.conMobile;
    data['category'] = this.category;
    data['schedule_time'] = this.scheduleTime;
    data['pickup_address'] = this.pickupAddress;
    data['drop_address'] = this.dropAddress;
    data['booking_status_id'] = this.bookingStatusId;
    data['booking_status'] = this.bookingStatus;
    data['booking_status_dev_text'] = this.bookingStatusDevText;
    data['distance'] = this.distance;
    data['booking_duration'] = this.bookingDuration;
    data['total_amount'] = this.totalAmount;
    data['category_name'] = this.categoryName;
    data['category_icon'] = this.categoryIcon;
    data['Assigned_driver_id'] = this.assignedDriverId;
    data['Assigned_driver_name'] = this.assignedDriverName;
    data['Assigned_driver_image'] = this.assignedDriverImage;
    data['Assigned_vehicle_id'] = this.assignedVehicleId;
    data['Assigned_vehicle_no'] = this.assignedVehicleNo;
    data['currency_symbol'] = this.currencySymbol;
    data['booking_otp'] = this.bookingOtp;
    data['booking_status_otp'] = this.bookingStatusOtp;
    data['booking_status_otp_dev_txt'] = this.bookingStatusOtpDevTxt;
    data['pickup_lat'] = this.pickupLat;
    data['pickup_long'] = this.pickupLong;
    data['payment_status'] = this.paymentStatus;
    data['payment_status_txt'] = this.paymentStatusTxt;
    return data;
  }
}
