class FinalBookingResp {
  String? result;
  String? status;
  String? message;
  String? text;
  List<JSONData>? jSONData;

  FinalBookingResp(
      {this.result, this.status, this.message, this.text, this.jSONData});

  FinalBookingResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    text = json['text'];
    if (json['JSONData'] != null) {
      jSONData = <JSONData>[];
      json['JSONData'].forEach((v) {
        jSONData!.add(new JSONData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    data['text'] = this.text;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  String? enquaryId;
  String? category;

  JSONData({this.enquaryId, this.category});

  JSONData.fromJson(Map<String, dynamic> json) {
    enquaryId = json['enquary_id'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enquary_id'] = this.enquaryId;
    data['category'] = this.category;
    return data;
  }
}
