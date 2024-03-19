class PostSendOtpReq {
  String? mobile;
  String? authKey;

  PostSendOtpReq({this.mobile, this.authKey});

  PostSendOtpReq.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.mobile != null) {
      data['mobile'] = this.mobile;
    }
    if (this.authKey != null) {
      data['auth_key'] = this.authKey;
    }
    return data;
  }
}
