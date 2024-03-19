class DailReq {
  String? cdrConsumerId;
  String? cdrCurrentLat;
  String? cdrCurrentLong;
  String? authKey;
  String? cdrHospitalId;
  String? cdrNumber;

  DailReq(
      {this.cdrConsumerId,
        this.cdrCurrentLat,
        this.cdrCurrentLong,
        this.authKey,
        this.cdrHospitalId,
        this.cdrNumber});

  DailReq.fromJson(Map<String, dynamic> json) {
    cdrConsumerId = json['cdr_consumer_id'];
    cdrCurrentLat = json['cdr_current_lat'];
    cdrCurrentLong = json['cdr_current_long'];
    authKey = json['auth_key'];
    cdrHospitalId = json['cdr_hospital_id'];
    cdrNumber = json['cdr_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cdr_consumer_id'] = this.cdrConsumerId;
    data['cdr_current_lat'] = this.cdrCurrentLat;
    data['cdr_current_long'] = this.cdrCurrentLong;
    data['auth_key'] = this.authKey;
    data['cdr_hospital_id'] = this.cdrHospitalId;
    data['cdr_number'] = this.cdrNumber;
    return data;
  }
}
