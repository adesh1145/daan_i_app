class LabOngoingBookingScreenReq {
  String? userId;
  String? authKey;

  LabOngoingBookingScreenReq({this.userId, this.authKey});

  LabOngoingBookingScreenReq.fromJson(Map<String, dynamic> json) {
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
