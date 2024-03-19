class GetLanguageListResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  GetLanguageListResp({this.result, this.status, this.message, this.jSONData});

  GetLanguageListResp.fromJson(Map<String, dynamic> json) {
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
  int? languageId;
  String? languageSymbol;
  String? languageName;
  String? languageNameEn;
  String? languageIcons;
  int? languageCountryId;
  int? languageStatus;

  JSONData(
      {this.languageId,
      this.languageSymbol,
      this.languageName,
      this.languageNameEn,
      this.languageIcons,
      this.languageCountryId,
      this.languageStatus});

  JSONData.fromJson(Map<String, dynamic> json) {
    languageId = json['language_id'];
    languageSymbol = json['language_symbol'];
    languageName = json['language_name'];
    languageNameEn = json['language_name_en'];
    languageIcons = json['language_icons'];
    languageCountryId = json['language_country_id'];
    languageStatus = json['language_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.languageId != null) {
      data['language_id'] = this.languageId;
    }
    if (this.languageSymbol != null) {
      data['language_symbol'] = this.languageSymbol;
    }
    if (this.languageName != null) {
      data['language_name'] = this.languageName;
    }
    if (this.languageNameEn != null) {
      data['language_name_en'] = this.languageNameEn;
    }
    if (this.languageIcons != null) {
      data['language_icons'] = this.languageIcons;
    }
    if (this.languageCountryId != null) {
      data['language_country_id'] = this.languageCountryId;
    }
    if (this.languageStatus != null) {
      data['language_status'] = this.languageStatus;
    }
    return data;
  }
}
