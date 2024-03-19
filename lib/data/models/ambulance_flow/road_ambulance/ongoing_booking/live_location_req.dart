class LiveLocationReq {
  String? driverId;

  LiveLocationReq({this.driverId});

  LiveLocationReq.fromJson(Map<String, dynamic> json) {
    driverId = json['driver_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['driver_id'] = this.driverId;
    return data;
  }
}
