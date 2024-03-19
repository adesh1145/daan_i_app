class OngoingBookingReq {
  String? consumerId;
  String? enquaryId;
  String? authKey;

  OngoingBookingReq({this.consumerId, this.enquaryId, this.authKey});

  OngoingBookingReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    enquaryId = json['enquary_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['enquary_id'] = this.enquaryId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
