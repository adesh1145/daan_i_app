class AirPriceReq {
  String? consumerId;
  String? type;
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
  String? authKey;

  AirPriceReq(
      {this.consumerId,
      this.type,
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
      this.authKey});

  AirPriceReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    type = json['type'];
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
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['type'] = this.type;
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
    data['auth_key'] = this.authKey;
    return data;
  }
}
