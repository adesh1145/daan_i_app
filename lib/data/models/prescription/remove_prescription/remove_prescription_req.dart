class RemovePriscriptionReq {
  String? userId;
  String? cpoId;
  String? cityName;
  String? authKey;

  RemovePriscriptionReq({this.userId, this.cpoId, this.cityName, this.authKey});

  RemovePriscriptionReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    cpoId = json['cpo_id'];
    cityName = json['cityName'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['cpo_id'] = this.cpoId;
    data['cityName'] = this.cityName;
    data['auth_key'] = this.authKey;
    return data;
  }
}
