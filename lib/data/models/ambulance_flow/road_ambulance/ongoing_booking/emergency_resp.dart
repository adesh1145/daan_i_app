class EmergencyResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  EmergencyResp({this.result, this.status, this.message, this.jSONData});

  EmergencyResp.fromJson(Map<String, dynamic> json) {
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
  String? consumerEmergencyConsumerId;
  String? consumerEmergencyBookingId;
  String? consumerEmergencyConsumerLat;
  String? consumerEmergencyConsumerLong;
  String? consumerEmergencyStatus;
  int? consumerEmergencyRequestTiming;
  String? updatedAt;
  String? createdAt;
  int? id;

  JSONData(
      {this.consumerEmergencyConsumerId,
      this.consumerEmergencyBookingId,
      this.consumerEmergencyConsumerLat,
      this.consumerEmergencyConsumerLong,
      this.consumerEmergencyStatus,
      this.consumerEmergencyRequestTiming,
      this.updatedAt,
      this.createdAt,
      this.id});

  JSONData.fromJson(Map<String, dynamic> json) {
    consumerEmergencyConsumerId = json['consumer_emergency_consumer_id'];
    consumerEmergencyBookingId = json['consumer_emergency_booking_id'];
    consumerEmergencyConsumerLat = json['consumer_emergency_consumer_lat'];
    consumerEmergencyConsumerLong = json['consumer_emergency_consumer_long'];
    consumerEmergencyStatus = json['consumer_emergency_status'];
    consumerEmergencyRequestTiming = json['consumer_emergency_request_timing'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_emergency_consumer_id'] = this.consumerEmergencyConsumerId;
    data['consumer_emergency_booking_id'] = this.consumerEmergencyBookingId;
    data['consumer_emergency_consumer_lat'] = this.consumerEmergencyConsumerLat;
    data['consumer_emergency_consumer_long'] =
        this.consumerEmergencyConsumerLong;
    data['consumer_emergency_status'] = this.consumerEmergencyStatus;
    data['consumer_emergency_request_timing'] =
        this.consumerEmergencyRequestTiming;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
