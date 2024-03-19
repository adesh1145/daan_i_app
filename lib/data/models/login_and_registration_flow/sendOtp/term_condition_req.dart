class TermConditions {
  String? page;
  String? authKey;

  TermConditions({this.page, this.authKey});

  TermConditions.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['auth_key'] = this.authKey;
    return data;
  }
}