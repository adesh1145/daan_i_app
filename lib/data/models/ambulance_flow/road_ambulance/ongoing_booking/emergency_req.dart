class EmergencyReq {
  String? consumerEmergencyConsumerId;
  String? consumerEmergencyBookingId;
  String? consumerEmergencyConsumerLat;
  String? consumerEmergencyConsumerLong;
  String? consumerEmergencyRequestTiming;
  String? consumerEmergencyStatus;

  EmergencyReq(
      {this.consumerEmergencyConsumerId,
        this.consumerEmergencyBookingId,
        this.consumerEmergencyConsumerLat,
        this.consumerEmergencyConsumerLong,
        this.consumerEmergencyRequestTiming,
        this.consumerEmergencyStatus});

  EmergencyReq.fromJson(Map<String, dynamic> json) {
    consumerEmergencyConsumerId = json['consumer_emergency_consumer_id'];
    consumerEmergencyBookingId = json['consumer_emergency_booking_id'];
    consumerEmergencyConsumerLat = json['consumer_emergency_consumer_lat'];
    consumerEmergencyConsumerLong = json['consumer_emergency_consumer_long'];
    consumerEmergencyRequestTiming = json['consumer_emergency_request_timing'];
    consumerEmergencyStatus = json['consumer_emergency_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_emergency_consumer_id'] = this.consumerEmergencyConsumerId;
    data['consumer_emergency_booking_id'] = this.consumerEmergencyBookingId;
    data['consumer_emergency_consumer_lat'] = this.consumerEmergencyConsumerLat;
    data['consumer_emergency_consumer_long'] =
        this.consumerEmergencyConsumerLong;
    data['consumer_emergency_request_timing'] =
        this.consumerEmergencyRequestTiming;
    data['consumer_emergency_status'] = this.consumerEmergencyStatus;
    return data;
  }
}
