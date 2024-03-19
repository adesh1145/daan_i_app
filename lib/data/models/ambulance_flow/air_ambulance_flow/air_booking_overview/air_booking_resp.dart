class AirBookingResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  AirBookingResp({this.result, this.status, this.message, this.jSONData});

  AirBookingResp.fromJson(Map<String, dynamic> json) {
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
  String? bookingId;
  String? consumerId;
  String? bookingStatus;
  String? bookingStatusMessage;

  JSONData(
      {this.bookingId,
      this.consumerId,
      this.bookingStatus,
      this.bookingStatusMessage});

  JSONData.fromJson(Map<String, dynamic> json) {
    bookingId = json['booking_id'];
    consumerId = json['consumer_id'];
    bookingStatus = json['booking_status'];
    bookingStatusMessage = json['booking_status_message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['booking_id'] = this.bookingId;
    data['consumer_id'] = this.consumerId;
    data['booking_status'] = this.bookingStatus;
    data['booking_status_message'] = this.bookingStatusMessage;
    return data;
  }
}
