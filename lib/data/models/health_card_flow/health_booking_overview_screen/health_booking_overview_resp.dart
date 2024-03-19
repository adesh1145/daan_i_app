class HealthBookingOverviewResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  HealthBookingOverviewResp(
      {this.result, this.status, this.message, this.jSONData});

  HealthBookingOverviewResp.fromJson(Map<String, dynamic> json) {
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
  UserDetails? userDetails;
  PlanDetails? planDetails;
  PayDetails? payDetails;
  Address? address;

  JSONData({this.userDetails, this.planDetails, this.payDetails, this.address});

  JSONData.fromJson(Map<String, dynamic> json) {
    userDetails = json['user_details'] != null
        ? new UserDetails.fromJson(json['user_details'])
        : null;
    planDetails = json['plan_details'] != null
        ? new PlanDetails.fromJson(json['plan_details'])
        : null;
    payDetails = json['pay_details'] != null
        ? new PayDetails.fromJson(json['pay_details'])
        : null;
    address =
        json['address'] != null ? new Address.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userDetails != null) {
      data['user_details'] = this.userDetails!.toJson();
    }
    if (this.planDetails != null) {
      data['plan_details'] = this.planDetails!.toJson();
    }
    if (this.payDetails != null) {
      data['pay_details'] = this.payDetails!.toJson();
    }
    if (this.address != null) {
      data['address'] = this.address!.toJson();
    }
    return data;
  }
}

class UserDetails {
  int? subscriptionId;
  String? consumerNameFirst;
  String? consumerNameLast;
  String? consumerMobile;
  String? consumerGender;

  UserDetails(
      {this.subscriptionId,
      this.consumerNameFirst,
      this.consumerNameLast,
      this.consumerMobile,
      this.consumerGender});

  UserDetails.fromJson(Map<String, dynamic> json) {
    subscriptionId = json['subscription_id'];
    consumerNameFirst = json['consumer_name_first'];
    consumerNameLast = json['consumer_name_last'];
    consumerMobile = json['consumer_mobile'];
    consumerGender = json['consumer_gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subscription_id'] = this.subscriptionId;
    data['consumer_name_first'] = this.consumerNameFirst;
    data['consumer_name_last'] = this.consumerNameLast;
    data['consumer_mobile'] = this.consumerMobile;
    data['consumer_gender'] = this.consumerGender;
    return data;
  }
}

class PlanDetails {
  String? planName;
  String? planDuration;
  String? planRate;
  String? planDetails;

  PlanDetails(
      {this.planName, this.planDuration, this.planRate, this.planDetails});

  PlanDetails.fromJson(Map<String, dynamic> json) {
    planName = json['plan_name'];
    planDuration = json['plan_duration'];
    planRate = json['plan_rate'];
    planDetails = json['plan_details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['plan_name'] = this.planName;
    data['plan_duration'] = this.planDuration;
    data['plan_rate'] = this.planRate;
    data['plan_details'] = this.planDetails;
    return data;
  }
}

class PayDetails {
  String? paySubTotal;
  String? payGst;
  String? currencySymbol;
  String? payGstAmount;
  String? paySubDiscount;
  String? payTotalAmount;

  PayDetails(
      {this.paySubTotal,
      this.payGst,
      this.currencySymbol,
      this.payGstAmount,
      this.paySubDiscount,
      this.payTotalAmount});

  PayDetails.fromJson(Map<String, dynamic> json) {
    paySubTotal = json['pay_sub_total'];
    payGst = json['pay_gst'];
    currencySymbol = json['currency_symbol'];
    payGstAmount = json['pay_gst_amount'];
    paySubDiscount = json['pay_sub_discount'];
    payTotalAmount = json['pay_total_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pay_sub_total'] = this.paySubTotal;
    data['pay_gst'] = this.payGst;
    data['currency_symbol'] = this.currencySymbol;
    data['pay_gst_amount'] = this.payGstAmount;
    data['pay_sub_discount'] = this.paySubDiscount;
    data['pay_total_amount'] = this.payTotalAmount;
    return data;
  }
}

class Address {
  int? uaId;
  String? uaUserId;
  String? uaAddress;
  String? uaLandMark;
  String? uaAddressPincode;
  String? uaName;
  String? usContactNumber;
  String? uaAddressType;
  String? uaCityName;
  String? uaLatitude;
  String? uaLongitude;
  String? uaAddedTime;
  String? uaStatus;
  String? uaSelectedDelivery;

  Address(
      {this.uaId,
      this.uaUserId,
      this.uaAddress,
      this.uaLandMark,
      this.uaAddressPincode,
      this.uaName,
      this.usContactNumber,
      this.uaAddressType,
      this.uaCityName,
      this.uaLatitude,
      this.uaLongitude,
      this.uaAddedTime,
      this.uaStatus,
      this.uaSelectedDelivery});

  Address.fromJson(Map<String, dynamic> json) {
    uaId = json['ua_id'];
    uaUserId = json['ua_user_id'];
    uaAddress = json['ua_address'];
    uaLandMark = json['ua_land_mark'];
    uaAddressPincode = json['ua_address_pincode'];
    uaName = json['ua_name'];
    usContactNumber = json['us_contact_number'];
    uaAddressType = json['ua_address_type'];
    uaCityName = json['ua_city_name'];
    uaLatitude = json['ua_latitude'];
    uaLongitude = json['ua_longitude'];
    uaAddedTime = json['ua_added_time'];
    uaStatus = json['ua_status'];
    uaSelectedDelivery = json['ua_selected_delivery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ua_id'] = this.uaId;
    data['ua_user_id'] = this.uaUserId;
    data['ua_address'] = this.uaAddress;
    data['ua_land_mark'] = this.uaLandMark;
    data['ua_address_pincode'] = this.uaAddressPincode;
    data['ua_name'] = this.uaName;
    data['us_contact_number'] = this.usContactNumber;
    data['ua_address_type'] = this.uaAddressType;
    data['ua_city_name'] = this.uaCityName;
    data['ua_latitude'] = this.uaLatitude;
    data['ua_longitude'] = this.uaLongitude;
    data['ua_added_time'] = this.uaAddedTime;
    data['ua_status'] = this.uaStatus;
    data['ua_selected_delivery'] = this.uaSelectedDelivery;
    return data;
  }
}
