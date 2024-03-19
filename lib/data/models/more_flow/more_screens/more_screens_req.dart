class MoreHtmlReq {
  String? consumerId;
  String? page;
  String? authKey;

  MoreHtmlReq({this.consumerId, this.page, this.authKey});

  MoreHtmlReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    page = json['page'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['page'] = this.page;
    data['auth_key'] = this.authKey;
    return data;
  }
}
