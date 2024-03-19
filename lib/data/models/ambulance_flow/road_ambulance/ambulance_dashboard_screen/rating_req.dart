class RatingReq {
  String? consumerId;
  String? bookingId;
  String? rating;
  String? comment;
  String? authKey;

  RatingReq(
      {this.consumerId,
        this.bookingId,
        this.rating,
        this.comment,
        this.authKey});

  RatingReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    bookingId = json['booking_id'];
    rating = json['rating'];
    comment = json['comment'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['booking_id'] = this.bookingId;
    data['rating'] = this.rating;
    data['comment'] = this.comment;
    data['auth_key'] = this.authKey;
    return data;
  }
}

