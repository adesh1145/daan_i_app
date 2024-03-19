class AddMoneyReq {
  String? consumerId;
  String? transferAmount;
  String? transectionId;
  String? transectionNote;
  String? orderId;
  String? bankRefNo;
  String? orderStatus;
  String? paymentMode;
  String? paymentMobile;
  String? authKey;

  AddMoneyReq(
      {this.consumerId,
      this.transferAmount,
      this.transectionId,
      this.transectionNote,
      this.orderId,
      this.bankRefNo,
      this.orderStatus,
      this.paymentMode,
      this.paymentMobile,
      this.authKey});

  AddMoneyReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    transferAmount = json['transfer_amount'];
    transectionId = json['transection_id'];
    transectionNote = json['transection_note'];
    orderId = json['order_id'];
    bankRefNo = json['bank_ref_no'];
    orderStatus = json['order_status'];
    paymentMode = json['payment_mode'];
    paymentMobile = json['payment_mobile'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['transfer_amount'] = this.transferAmount;
    data['transection_id'] = this.transectionId;
    data['transection_note'] = this.transectionNote;
    data['order_id'] = this.orderId;
    data['bank_ref_no'] = this.bankRefNo;
    data['order_status'] = this.orderStatus;
    data['payment_mode'] = this.paymentMode;
    data['payment_mobile'] = this.paymentMobile;
    data['auth_key'] = this.authKey;
    return data;
  }
}
