class BookingScreenReq {
  String? consumerId;
  String? search;
  String? searchFilter;
  String? authKey;

  BookingScreenReq(
      {this.consumerId, this.search, this.searchFilter, this.authKey});

  BookingScreenReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    search = json['search'];
    searchFilter = json['search_filter'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['search'] = this.search;
    data['search_filter'] = this.searchFilter;
    data['auth_key'] = this.authKey;
    return data;
  }
}
