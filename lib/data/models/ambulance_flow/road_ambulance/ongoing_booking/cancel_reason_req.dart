class CancelReasonReq {
  String? consumerId;
  String? bookingId;
  String? authKey;

  CancelReasonReq({this.consumerId, this.bookingId, this.authKey});

  CancelReasonReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    bookingId = json['booking_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['booking_id'] = this.bookingId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
