
class LabCategoryReq {
  String? consumerId;
  String? labId;
  String? authKey;

  LabCategoryReq({this.consumerId, this.labId, this.authKey});

  LabCategoryReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    labId = json['lab_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['lab_id'] = this.labId;
    data['auth_key'] = this.authKey;
    return data;
  }
}
