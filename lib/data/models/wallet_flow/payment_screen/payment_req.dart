class PaymentReq {
  String? tid;
  String? orderId;
  String? amount;
  String? name;
  String? mobileNo;
  String? marchantParam1;
  String? marchantParam2;
  String? redirectUrl;
  String? cancelUrl;

  PaymentReq(
      {this.tid,
      this.orderId,
      this.amount,
      this.name,
      this.mobileNo,
      this.marchantParam1,
      this.marchantParam2,
      this.redirectUrl,
      this.cancelUrl});

  PaymentReq.fromJson(Map<String, dynamic> json) {
    tid = json['tid'];
    orderId = json['orderId'];
    amount = json['amount'];
    name = json['name'];
    mobileNo = json['mobile_no'];
    marchantParam1 = json['marchant_param1'];
    marchantParam2 = json['marchant_param2'];
    redirectUrl = json['redirectUrl'];
    cancelUrl = json['cancelUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tid'] = this.tid;
    data['orderId'] = this.orderId;
    data['amount'] = this.amount;
    data['name'] = this.name;
    data['mobile_no'] = this.mobileNo;
    data['marchant_param1'] = this.marchantParam1;
    data['marchant_param2'] = this.marchantParam2;
    data['redirectUrl'] = this.redirectUrl;
    data['cancelUrl'] = this.cancelUrl;
    return data;
  }
}
