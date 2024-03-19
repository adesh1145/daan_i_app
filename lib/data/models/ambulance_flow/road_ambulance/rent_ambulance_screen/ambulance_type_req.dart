class AmbulanceTypeReq {
  String? consumerId;
  String? pickupAddress;
  String? pickLat;
  String? pickLong;
  String? bookingTimeType;
  String? duration;
  String? poliline;
  String? schudleTime;
  String? authKey;

  AmbulanceTypeReq(
      {this.consumerId,
        this.pickupAddress,
        this.pickLat,
        this.pickLong,
        this.bookingTimeType,
        this.duration,
        this.poliline,
        this.schudleTime,
        this.authKey});

  AmbulanceTypeReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    pickupAddress = json['pickup_address'];
    pickLat = json['pick_lat'];
    pickLong = json['pick_long'];
    bookingTimeType = json['booking_time_type'];
    duration = json['duration'];
    poliline = json['poliline'];
    schudleTime = json['schudle_time'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['pickup_address'] = this.pickupAddress;
    data['pick_lat'] = this.pickLat;
    data['pick_long'] = this.pickLong;
    data['booking_time_type'] = this.bookingTimeType;
    data['duration'] = this.duration;
    data['poliline'] = this.poliline;
    data['schudle_time'] = this.schudleTime;
    data['auth_key'] = this.authKey;
    return data;
  }
}
