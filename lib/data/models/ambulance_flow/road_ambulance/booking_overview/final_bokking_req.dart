class FinalBookingReq {
  String? consumerId;
  String? enquaryId;
  String? paymentMethod;
  String? paymentType;
  String? transectionId;
  String? orderId;
  String? transferAmount;
  String? authKey;
  String? bankRefNo;
  String? orderStatus;
  String? paymentMode;
  String? paymentMobile;
  String? time;

  FinalBookingReq(
      {this.consumerId,
      this.enquaryId,
      this.paymentMethod,
      this.paymentType,
      this.transectionId,
      this.orderId,
      this.transferAmount,
      this.authKey,
      this.bankRefNo,
      this.orderStatus,
      this.paymentMode,
      this.paymentMobile,
      this.time});

  FinalBookingReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    enquaryId = json['enquary_id'];
    paymentMethod = json['payment_method'];
    paymentType = json['payment_type'];
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
    data['enquary_id'] = this.enquaryId;
    data['payment_method'] = this.paymentMethod;
    data['payment_type'] = this.paymentType;
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
