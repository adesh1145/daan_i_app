class BookingHistoryDetailReq {
  String? consumerId;
  String? enquaryId;
  String? authKey;

  BookingHistoryDetailReq({this.consumerId, this.enquaryId, this.authKey});

  BookingHistoryDetailReq.fromJson(Map<String, dynamic> json) {
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
