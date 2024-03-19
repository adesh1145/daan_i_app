class PostGetPageTextResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  PostGetPageTextResp({this.result, this.status, this.message, this.jSONData});

  PostGetPageTextResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    if (json['JSONData'] != null) {
      jSONData = <JSONData>[];
      json['JSONData'].forEach((v) {
        jSONData?.add(JSONData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.result != null) {
      data['result'] = this.result;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.message != null) {
      data['Message'] = this.message;
    }
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  String? pageSku;
  String? pageName;
  String? textSrNo;
  String? textInEnglish;
  String? textInSelectedLang;

  JSONData(
      {this.pageSku,
      this.pageName,
      this.textSrNo,
      this.textInEnglish,
      this.textInSelectedLang});

  JSONData.fromJson(Map<String, dynamic> json) {
    pageSku = json['page_sku'];
    pageName = json['page_name'];
    textSrNo = json['text_sr_no'];
    textInEnglish = json['text_in_english'];
    textInSelectedLang = json['text_in_selected_lang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.pageSku != null) {
      data['page_sku'] = this.pageSku;
    }
    if (this.pageName != null) {
      data['page_name'] = this.pageName;
    }
    if (this.textSrNo != null) {
      data['text_sr_no'] = this.textSrNo;
    }
    if (this.textInEnglish != null) {
      data['text_in_english'] = this.textInEnglish;
    }
    if (this.textInSelectedLang != null) {
      data['text_in_selected_lang'] = this.textInSelectedLang;
    }
    return data;
  }
}
