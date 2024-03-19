class ResendOtpReq {
  String? mobile;
  String? authKey;

  ResendOtpReq({this.mobile, this.authKey});

  ResendOtpReq.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['auth_key'] = this.authKey;
    return data;
  }
}
