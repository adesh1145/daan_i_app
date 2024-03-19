class BookingDetailsReq {
    String? consumerId;
    String? enquaryId;
    String? categoryType;
    String? authKey;

    BookingDetailsReq(
        {this.consumerId, this.enquaryId, this.categoryType, this.authKey});

    BookingDetailsReq.fromJson(Map<String, dynamic> json) {
        consumerId = json['consumer_id'];
        enquaryId = json['enquary_id'];
        categoryType = json['category_type'];
        authKey = json['auth_key'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['consumer_id'] = this.consumerId;
        data['enquary_id'] = this.enquaryId;
        data['category_type'] = this.categoryType;
        data['auth_key'] = this.authKey;
        return data;
    }
}
