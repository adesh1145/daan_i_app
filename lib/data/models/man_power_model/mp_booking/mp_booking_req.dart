class MpBookingReq {
  String? userId;
  String? paymentType;
  String? transectionId;
  String? cityName;
  String? authKey;
  String? transferAmount;
  String? bankRefNo;
  String? paymentMode;
  String? paymentMobile;
  String? time;
  String? orderStatus;
  String? orderId;

  MpBookingReq(
      {this.userId,
      this.paymentType,
      this.transectionId,
      this.cityName,
      this.authKey,
      this.transferAmount,
      this.bankRefNo,
      this.paymentMode,
      this.paymentMobile,
      this.time,
      this.orderStatus,
      this.orderId});

  MpBookingReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    paymentType = json['payment_type'];
    transectionId = json['transection_id'];
    cityName = json['cityName'];
    authKey = json['auth_key'];
    transferAmount = json['transfer_amount'];
    bankRefNo = json['bank_ref_no'];
    paymentMode = json['payment_mode'];
    paymentMobile = json['payment_mobile'];
    time = json['time'];
    orderStatus = json['order_status'];
    orderId = json['order_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['payment_type'] = this.paymentType;
    data['transection_id'] = this.transectionId;
    data['cityName'] = this.cityName;
    data['auth_key'] = this.authKey;
    data['transfer_amount'] = this.transferAmount;
    data['bank_ref_no'] = this.bankRefNo;
    data['payment_mode'] = this.paymentMode;
    data['payment_mobile'] = this.paymentMobile;
    data['time'] = this.time;
    data['order_status'] = this.orderStatus;
    data['order_id'] = this.orderId;
    return data;
  }
}
