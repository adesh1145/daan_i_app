class MedicineBookingHistoryResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  MedicineBookingHistoryResp(
      {this.result, this.status, this.message, this.jSONData});

  MedicineBookingHistoryResp.fromJson(Map<String, dynamic> json) {
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
  int? oredrId;
  double? totalPayment;
  String? paymentStatus;
  String? orderStatus;
  String? bookingDateTime;
  String? deliveryStatus;
  String? address;
  String? landMark;
  String? pincode;
  String? addressType;

  JSONData(
      {this.oredrId,
      this.totalPayment,
      this.paymentStatus,
      this.orderStatus,
      this.bookingDateTime,
      this.deliveryStatus,
      this.address,
      this.landMark,
      this.pincode,
      this.addressType});

  JSONData.fromJson(Map<String, dynamic> json) {
    oredrId = json['oredrId'];
    totalPayment = double.tryParse(json['totalPayment'].toString());
    paymentStatus = json['paymentStatus'];
    orderStatus = json['orderStatus'];
    bookingDateTime = json['BookingDateTime'];
    deliveryStatus = json['deliveryStatus'];
    address = json['address'];
    landMark = json['landMark'];
    pincode = json['pincode'];
    addressType = json['addressType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['oredrId'] = this.oredrId;
    data['totalPayment'] = this.totalPayment;
    data['paymentStatus'] = this.paymentStatus;
    data['orderStatus'] = this.orderStatus;
    data['BookingDateTime'] = this.bookingDateTime;
    data['deliveryStatus'] = this.deliveryStatus;
    data['address'] = this.address;
    data['landMark'] = this.landMark;
    data['pincode'] = this.pincode;
    data['addressType'] = this.addressType;
    return data;
  }
}
