class UserAddressListResp {
  String? result;
  String? status;
  String? message;
  String? devMsg;
  List<JSONData>? jSONData;

  UserAddressListResp(
      {this.result, this.status, this.message, this.devMsg, this.jSONData});

  UserAddressListResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    devMsg = json['dev_msg'];
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
    data['dev_msg'] = this.devMsg;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  int? uaId;
  String? uaUserId;
  String? uaAddress;
  String? uaLandMark;
  String? uaAddressPincode;
  String? uaName;
  String? usContactNumber;
  String? uaAddressType;
  String? uaCityName;
  String? uaAddedTime;
  String? uaStatus;
  String? uaSelectedDelivery;
  String? uaLatitude;
  String? uaLongitude;

  JSONData(
      {this.uaId,
      this.uaUserId,
      this.uaAddress,
      this.uaLandMark,
      this.uaAddressPincode,
      this.uaName,
      this.usContactNumber,
      this.uaAddressType,
      this.uaCityName,
      this.uaAddedTime,
      this.uaStatus,
      this.uaSelectedDelivery,
      this.uaLatitude,
      this.uaLongitude});

  JSONData.fromJson(Map<String, dynamic> json) {
    uaId = json['ua_id'];
    uaUserId = json['ua_user_id'];
    uaAddress = json['ua_address'];
    uaLandMark = json['ua_land_mark'];
    uaAddressPincode = json['ua_address_pincode'];
    uaName = json['ua_name'];
    usContactNumber = json['us_contact_number'];
    uaAddressType = json['ua_address_type'];
    uaCityName = json['ua_city_name'];
    uaAddedTime = json['ua_added_time'];
    uaStatus = json['ua_status'];
    uaSelectedDelivery = json['ua_selected_delivery'];
    uaLatitude = json['ua_latitude'];
    uaLongitude = json['ua_longitude'];
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
    data['ua_added_time'] = this.uaAddedTime;
    data['ua_status'] = this.uaStatus;
    data['ua_selected_delivery'] = this.uaSelectedDelivery;
    data['ua_latitude'] = this.uaLatitude;
    data['ua_longitude'] = this.uaLongitude;
    return data;
  }
}
