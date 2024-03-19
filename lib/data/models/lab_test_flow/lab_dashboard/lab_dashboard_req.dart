class LabDashBoardReq {
  String? userId;
  String? labId;
  String? authKey;

  LabDashBoardReq({this.userId, this.labId, this.authKey});

  LabDashBoardReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    labId = json['lab_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['lab_id'] = this.labId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
