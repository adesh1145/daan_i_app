class ApplyCpnRes {
  String? result;
  String? status;
  String? message;

  ApplyCpnRes({this.result, this.status, this.message});

  ApplyCpnRes.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    return data;
  }
}
