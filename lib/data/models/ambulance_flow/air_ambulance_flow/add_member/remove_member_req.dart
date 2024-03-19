class RemoveMemberReq {
  String? attendentId;
  String? bookingId;
  String? consumerId;
  String? authKey;

  RemoveMemberReq(
      {this.attendentId, this.bookingId, this.consumerId, this.authKey});

  RemoveMemberReq.fromJson(Map<String, dynamic> json) {
    attendentId = json['attendent_id'];
    bookingId = json['booking_id'];
    consumerId = json['consumer_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attendent_id'] = this.attendentId;
    data['booking_id'] = this.bookingId;
    data['consumer_id'] = this.consumerId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
