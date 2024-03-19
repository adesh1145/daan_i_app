class GetMemberReq {
  String? bookingId;
  String? consumerId;
  String? authKey;

  GetMemberReq({this.bookingId, this.consumerId, this.authKey});

  GetMemberReq.fromJson(Map<String, dynamic> json) {
    bookingId = json['booking_id'];
    consumerId = json['consumer_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['booking_id'] = this.bookingId;
    data['consumer_id'] = this.consumerId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
