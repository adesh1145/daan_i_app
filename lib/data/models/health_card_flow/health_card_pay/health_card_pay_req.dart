class HealthCardPayReq {
  String? consumerId;
  String? subscriptionId;
  String? transectionId;
  String? orderId;
  String? transferAmount;
  String? authKey;
  String? bankRefNo;
  String? orderStatus;
  String? paymentMode;
  String? paymentMobile;
  String? time;

  HealthCardPayReq(
      {this.consumerId,
      this.subscriptionId,
      this.transectionId,
      this.orderId,
      this.transferAmount,
      this.authKey,
      this.bankRefNo,
      this.orderStatus,
      this.paymentMode,
      this.paymentMobile,
      this.time});

  HealthCardPayReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    subscriptionId = json['subscription_id'];
    transectionId = json['transection_id'];
    orderId = json['order_id'];
    transferAmount = json['transfer_amount'];
    authKey = json['auth_key'];
    bankRefNo = json['bank_ref_no'];
    orderStatus = json['order_status'];
    paymentMode = json['payment_mode'];
    paymentMobile = json['payment_mobile'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['subscription_id'] = this.subscriptionId;
    data['transection_id'] = this.transectionId;
    data['order_id'] = this.orderId;
    data['transfer_amount'] = this.transferAmount;
    data['auth_key'] = this.authKey;
    data['bank_ref_no'] = this.bankRefNo;
    data['order_status'] = this.orderStatus;
    data['payment_mode'] = this.paymentMode;
    data['payment_mobile'] = this.paymentMobile;
    data['time'] = this.time;
    return data;
  }
}
