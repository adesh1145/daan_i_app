class AddAddressRes {
  String? result;
  String? status;
  String? message;
  int? jSONData;

  AddAddressRes({this.result, this.status, this.message, this.jSONData});

  AddAddressRes.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    jSONData = json['JSONData'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    data['JSONData'] = this.jSONData;
    return data;
  }
}
