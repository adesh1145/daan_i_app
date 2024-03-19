class TermConditionsResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  TermConditionsResp({this.result, this.status, this.message, this.jSONData});

  TermConditionsResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
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
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  String? pageName;
  String? pageText;

  JSONData({this.pageName, this.pageText});

  JSONData.fromJson(Map<String, dynamic> json) {
    pageName = json['page_name'];
    pageText = json['page_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page_name'] = this.pageName;
    data['page_text'] = this.pageText;
    return data;
  }
}
