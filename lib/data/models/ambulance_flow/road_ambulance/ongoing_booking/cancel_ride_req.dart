class CancelRideReq {
  String? consumerId;
  String? enquaryId;
  String? cancelReasonId;
  String? cancelReasonAmount;
  String? cancelReasonText;
  String? liveLat;
  String? liveLong;
  String? authKey;

  CancelRideReq(
      {this.consumerId,
        this.enquaryId,
        this.cancelReasonId,
        this.cancelReasonAmount,
        this.cancelReasonText,
        this.liveLat,
        this.liveLong,
        this.authKey});

  CancelRideReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    enquaryId = json['enquary_id'];
    cancelReasonId = json['cancel_reason_id'];
    cancelReasonAmount = json['cancel_reason_amount'];
    cancelReasonText = json['cancel_reason_text'];
    liveLat = json['live_lat'];
    liveLong = json['live_long'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['enquary_id'] = this.enquaryId;
    data['cancel_reason_id'] = this.cancelReasonId;
    data['cancel_reason_amount'] = this.cancelReasonAmount;
    data['cancel_reason_text'] = this.cancelReasonText;
    data['live_lat'] = this.liveLat;
    data['live_long'] = this.liveLong;
    data['auth_key'] = this.authKey;
    return data;
  }
}
