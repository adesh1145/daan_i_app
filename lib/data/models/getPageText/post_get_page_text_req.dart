class PostGetPageTextReq {
  String? pageSku;
  String? languageId;
  String? authKey;

  PostGetPageTextReq({this.pageSku, this.languageId, this.authKey});

  PostGetPageTextReq.fromJson(Map<String, dynamic> json) {
    pageSku = json['page_sku'];
    languageId = json['language_id'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.pageSku != null) {
      data['page_sku'] = this.pageSku;
    }
    if (this.languageId != null) {
      data['language_id'] = this.languageId;
    }
    if (this.authKey != null) {
      data['auth_key'] = this.authKey;
    }
    return data;
  }
}
