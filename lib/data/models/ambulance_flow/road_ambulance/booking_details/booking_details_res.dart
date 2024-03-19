class BookingDetailsResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  BookingDetailsResp({this.result, this.status, this.message, this.jSONData});

  BookingDetailsResp.fromJson(Map<String, dynamic> json) {
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
  List<EnquaryDetails>? enquaryDetails;

  JSONData({this.enquaryDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['enquary_details'] != null) {
      enquaryDetails = <EnquaryDetails>[];
      json['enquary_details'].forEach((v) {
        enquaryDetails!.add(new EnquaryDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.enquaryDetails != null) {
      data['enquary_details'] =
          this.enquaryDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EnquaryDetails {
  String? enquaryId;
  String? bookingType;
  String? bookingTypeTxt;
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
  String? distance;
  String? duration;
  String? poliline;
  String? schudleTime;
  String? categoryType;
  String? categoryName;
  String? categoryIcon;
  String? includes;
  String? includesTxt;
  String? addonsAmount;
  String? totalAmount;
  List<AbmulanceSelected>? abmulanceSelected;
  List<SpecialistList>? specialistList;
  String? currencySymbol;

  EnquaryDetails(
      {this.enquaryId,
      this.bookingType,
      this.bookingTypeTxt,
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
      this.distance,
      this.duration,
      this.poliline,
      this.schudleTime,
      this.categoryType,
      this.categoryName,
      this.categoryIcon,
      this.includes,
      this.includesTxt,
      this.addonsAmount,
      this.totalAmount,
      this.abmulanceSelected,
      this.specialistList,
      this.currencySymbol});

  EnquaryDetails.fromJson(Map<String, dynamic> json) {
    enquaryId = json['enquary_id'];
    bookingType = json['booking_type'];
    bookingTypeTxt = json['booking_type_txt'];
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
    distance = json['distance'];
    duration = json['duration'];
    poliline = json['poliline'];
    schudleTime = json['schudle_time'];
    categoryType = json['category_type'];
    categoryName = json['category_name'];
    categoryIcon = json['category_icon'];
    includes = json['includes'];
    includesTxt = json['includes_txt'];
    addonsAmount = json['addons_amount'];
    totalAmount = json['total_amount'];
    if (json['abmulance_selected'] != null) {
      abmulanceSelected = <AbmulanceSelected>[];
      json['abmulance_selected'].forEach((v) {
        abmulanceSelected!.add(new AbmulanceSelected.fromJson(v));
      });
    }
    if (json['specialist_list'] != null) {
      specialistList = <SpecialistList>[];
      json['specialist_list'].forEach((v) {
        specialistList!.add(new SpecialistList.fromJson(v));
      });
    }
    currencySymbol = json['currency_symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enquary_id'] = this.enquaryId;
    data['booking_type'] = this.bookingType;
    data['booking_type_txt'] = this.bookingTypeTxt;
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
    data['distance'] = this.distance;
    data['duration'] = this.duration;
    data['poliline'] = this.poliline;
    data['schudle_time'] = this.schudleTime;
    data['category_type'] = this.categoryType;
    data['category_name'] = this.categoryName;
    data['category_icon'] = this.categoryIcon;
    data['includes'] = this.includes;
    data['includes_txt'] = this.includesTxt;
    data['addons_amount'] = this.addonsAmount;
    data['total_amount'] = this.totalAmount;
    if (this.abmulanceSelected != null) {
      data['abmulance_selected'] =
          this.abmulanceSelected!.map((v) => v.toJson()).toList();
    }
    if (this.specialistList != null) {
      data['specialist_list'] =
          this.specialistList!.map((v) => v.toJson()).toList();
    }
    data['currency_symbol'] = this.currencySymbol;
    return data;
  }
}

class AbmulanceSelected {
  String? categoryType;
  String? categoryName;
  String? categoryIcon;
  String? bookingTotalAmount;
  String? totalQuantity;
  String? totalBookingAmount;
  String? totalCategoryAmountWithQt;

  AbmulanceSelected(
      {this.categoryType,
      this.categoryName,
      this.categoryIcon,
      this.bookingTotalAmount,
      this.totalQuantity,
      this.totalBookingAmount,
      this.totalCategoryAmountWithQt});

  AbmulanceSelected.fromJson(Map<String, dynamic> json) {
    categoryType = json['category_type'];
    categoryName = json['category_name'];
    categoryIcon = json['category_icon'];
    bookingTotalAmount = json['booking_total_amount'];
    totalQuantity = json['total_quantity'];
    totalBookingAmount = json['total_booking_amount'];
    totalCategoryAmountWithQt = json['total_category_amount_with_qt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_type'] = this.categoryType;
    data['category_name'] = this.categoryName;
    data['category_icon'] = this.categoryIcon;
    data['booking_total_amount'] = this.bookingTotalAmount;
    data['total_quantity'] = this.totalQuantity;
    data['total_booking_amount'] = this.totalBookingAmount;
    data['total_category_amount_with_qt'] = this.totalCategoryAmountWithQt;
    return data;
  }
}

class SpecialistList {
  int? specialistsId;
  String? specialistsCategoryName;
  String? specialistsName;
  String? specialistsAmount;
  String? specialistsImageCircle;
  String? specialistsImageSquire;
  String? specialistsDescription;
  String? specialistsStatus;
  String? specialistsStatusTxt;
  String? specialistsStatusRemove;

  SpecialistList(
      {this.specialistsId,
      this.specialistsCategoryName,
      this.specialistsName,
      this.specialistsAmount,
      this.specialistsImageCircle,
      this.specialistsImageSquire,
      this.specialistsDescription,
      this.specialistsStatus,
      this.specialistsStatusTxt,
      this.specialistsStatusRemove});

  SpecialistList.fromJson(Map<String, dynamic> json) {
    specialistsId = json['specialists_id'];
    specialistsCategoryName = json['specialists_category_name'];
    specialistsName = json['specialists_name'];
    specialistsAmount = json['specialists_amount'];
    specialistsImageCircle = json['specialists_image_circle'];
    specialistsImageSquire = json['specialists_image_squire'];
    specialistsDescription = json['specialists_description'];
    specialistsStatus = json['specialists_status'];
    specialistsStatusTxt = json['specialists_status_txt'];
    specialistsStatusRemove = json['specialists_status_remove'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['specialists_id'] = this.specialistsId;
    data['specialists_category_name'] = this.specialistsCategoryName;
    data['specialists_name'] = this.specialistsName;
    data['specialists_amount'] = this.specialistsAmount;
    data['specialists_image_circle'] = this.specialistsImageCircle;
    data['specialists_image_squire'] = this.specialistsImageSquire;
    data['specialists_description'] = this.specialistsDescription;
    data['specialists_status'] = this.specialistsStatus;
    data['specialists_status_txt'] = this.specialistsStatusTxt;
    data['specialists_status_remove'] = this.specialistsStatusRemove;
    return data;
  }
}
