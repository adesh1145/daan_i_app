class CheckAvailabilityReq {
  String? consumerId;
  String? serviceCatId;
  String? searchKeywords;
  String? searchCity;
  String? filterType;
  String? currentLat;
  String? currentLong;
  String? devText;
  String? authKey;

  CheckAvailabilityReq(
      {this.consumerId,
        this.serviceCatId,
        this.searchKeywords,
        this.searchCity,
        this.filterType,
        this.currentLat,
        this.currentLong,
        this.devText,
        this.authKey});

  CheckAvailabilityReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    serviceCatId = json['service_cat_id'];
    searchKeywords = json['search_keywords'];
    searchCity = json['search_city'];
    filterType = json['filter_type'];
    currentLat = json['current_lat'];
    currentLong = json['current_long'];
    devText = json['dev_text_'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['service_cat_id'] = this.serviceCatId;
    data['search_keywords'] = this.searchKeywords;
    data['search_city'] = this.searchCity;
    data['filter_type'] = this.filterType;
    data['current_lat'] = this.currentLat;
    data['current_long'] = this.currentLong;
    data['dev_text_'] = this.devText;
    data['auth_key'] = this.authKey;
    return data;
  }
}
