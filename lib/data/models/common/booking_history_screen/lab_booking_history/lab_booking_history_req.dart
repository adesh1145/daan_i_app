class LabBookingHistoryReq {
  String? userId;
  String? authKey;

  LabBookingHistoryReq({this.userId, this.authKey});

  LabBookingHistoryReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
