class MpFaqResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MpFaqResp({this.result, this.status, this.message, this.jSONData});

  MpFaqResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    jSONData = json['JSONData'] != null
        ? new JSONData.fromJson(json['JSONData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.toJson();
    }
    return data;
  }
}

class JSONData {
  List<FaqList>? faqList;

  JSONData({this.faqList});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['faqList'] != null) {
      faqList = <FaqList>[];
      json['faqList'].forEach((v) {
        faqList!.add(new FaqList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.faqList != null) {
      data['faqList'] = this.faqList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FaqList {
  String? header;
  String? description;

  FaqList({this.header, this.description});

  FaqList.fromJson(Map<String, dynamic> json) {
    header = json['header'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['header'] = this.header;
    data['description'] = this.description;
    return data;
  }
}
