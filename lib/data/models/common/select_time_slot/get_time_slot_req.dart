class GetTimeSlotReq {
  String? userId;
  String? day;
  String? cityName;
  String? auth;

  GetTimeSlotReq({this.userId, this.day, this.cityName, this.auth});

  GetTimeSlotReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    day = json['day'];
    cityName = json['cityName'];
    auth = json['auth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['day'] = this.day;
    data['cityName'] = this.cityName;
    data['auth'] = this.auth;
    return data;
  }
}
