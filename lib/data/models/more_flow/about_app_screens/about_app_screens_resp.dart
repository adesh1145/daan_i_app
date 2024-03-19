class AboutAppHtmlResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  AboutAppHtmlResp({this.result, this.status, this.message, this.jSONData});

  AboutAppHtmlResp.fromJson(Map<String, dynamic> json) {
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
  String? sku;
  String? pageName;
  String? pageTxt;

  JSONData({this.sku, this.pageName, this.pageTxt});

  JSONData.fromJson(Map<String, dynamic> json) {
    sku = json['sku'];
    pageName = json['page_name'];
    pageTxt = json['page_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sku'] = this.sku;
    data['page_name'] = this.pageName;
    data['page_txt'] = this.pageTxt;
    return data;
  }
}
