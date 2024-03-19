class HospitalListReq {
  String? consumerId;
  String? languageId;
  String? authKey;

  HospitalListReq({this.consumerId, this.languageId, this.authKey});

  HospitalListReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    languageId = json['language_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['language_id'] = this.languageId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
