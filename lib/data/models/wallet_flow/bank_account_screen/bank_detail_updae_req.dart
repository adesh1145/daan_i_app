class BankDetailUpdateReq {
  String? consumerId;
  String? accNo;
  String? accIfsc;
  String? accHolder;
  String? authKey;

  BankDetailUpdateReq(
      {this.consumerId,
      this.accNo,
      this.accIfsc,
      this.accHolder,
      this.authKey});

  BankDetailUpdateReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    accNo = json['acc_no'];
    accIfsc = json['acc_ifsc'];
    accHolder = json['acc_holder'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['acc_no'] = this.accNo;
    data['acc_ifsc'] = this.accIfsc;
    data['acc_holder'] = this.accHolder;
    data['auth_key'] = this.authKey;
    return data;
  }
}
