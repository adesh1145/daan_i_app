class FaqsDetailsReq {
  String? consumerId;
  String? faqActegory;
  String? authKey;

  FaqsDetailsReq({this.consumerId, this.faqActegory, this.authKey});

  FaqsDetailsReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    faqActegory = json['faq_actegory'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['faq_actegory'] = this.faqActegory;
    data['auth_key'] = this.authKey;
    return data;
  }
}
