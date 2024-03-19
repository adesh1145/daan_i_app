class MedicineBookingReq {
  String? userId;
  String? cityName;
  String? paymentType;
  String? transectionId;
  String? authKey;
  String? transferAmount;
  String? bankRefNo;
  String? paymentMode;
  String? paymentMobile;
  String? time;
  String? orderStatus;
  String? orderId;

  MedicineBookingReq(
      {this.userId,
      this.cityName,
      this.paymentType,
      this.transectionId,
      this.authKey,
      this.transferAmount,
      this.bankRefNo,
      this.paymentMode,
      this.paymentMobile,
      this.time,
      this.orderStatus,
      this.orderId});

  MedicineBookingReq.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    cityName = json['cityName'];
    paymentType = json['paymentType'];
    transectionId = json['transectionId'];
    authKey = json['authKey'];
    transferAmount = json['transferAmount'];
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
    data['cityName'] = this.cityName;
    data['paymentType'] = this.paymentType;
    data['transectionId'] = this.transectionId;
    data['authKey'] = this.authKey;
    data['transferAmount'] = this.transferAmount;
    data['bank_ref_no'] = this.bankRefNo;
    data['payment_mode'] = this.paymentMode;
    data['payment_mobile'] = this.paymentMobile;
    data['time'] = this.time;
    data['order_status'] = this.orderStatus;
    data['order_id'] = this.orderId;
    return data;
  }
}
