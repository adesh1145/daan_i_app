class MedicineBookingResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MedicineBookingResp({this.result, this.status, this.message, this.jSONData});

  MedicineBookingResp.fromJson(Map<String, dynamic> json) {
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
  int? bookingId;

  JSONData({this.bookingId});

  JSONData.fromJson(Map<String, dynamic> json) {
    bookingId = json['bookingId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bookingId'] = this.bookingId;
    return data;
  }
}
