class LabCartCleanReq {
  String? userId;
  String? authKey;

  LabCartCleanReq({this.userId, this.authKey});

  LabCartCleanReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
