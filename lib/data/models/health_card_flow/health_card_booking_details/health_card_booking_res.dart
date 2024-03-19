class HealthCardBookingRes {
  String? result;
  String? status;
  String? message;
  HealthCardBookingData? jSONData;

  HealthCardBookingRes({this.result, this.status, this.message, this.jSONData});

  HealthCardBookingRes.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    jSONData = json['JSONData'] != null
        ? new HealthCardBookingData.fromJson(json['JSONData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.toJson();
    }
    return data;
  }
}

class HealthCardBookingData {
  List<BookingList>? bookingList;

  HealthCardBookingData({this.bookingList});

  HealthCardBookingData.fromJson(Map<String, dynamic> json) {
    if (json['booking_list'] != null) {
      bookingList = <BookingList>[];
      json['booking_list'].forEach((v) {
        bookingList!.add(new BookingList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bookingList != null) {
      data['booking_list'] = this.bookingList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BookingList {
  String? consumerName;
  String? cardNo;
  String? issueDate;
  String? expiredDate;
  String? amountTransaction;
  String? transactionDate;
  String? subTotal;
  String? gstRate;
  String? gstAmounts;
  String? discountAmounts;
  String? totalAmounts;
  String? currency;
  String? coupen;

  BookingList(
      {this.consumerName,
        this.cardNo,
        this.issueDate,
        this.expiredDate,
        this.amountTransaction,
        this.transactionDate,
        this.subTotal,
        this.gstRate,
        this.gstAmounts,
        this.discountAmounts,
        this.totalAmounts,
        this.currency,
        this.coupen});

  BookingList.fromJson(Map<String, dynamic> json) {
    consumerName = json['consumer_name'];
    cardNo = json['card_no'];
    issueDate = json['issue_date'];
    expiredDate = json['expired_date'];
    amountTransaction = json['amount_transaction'];
    transactionDate = json['transaction_date'];
    subTotal = json['sub_total'];
    gstRate = json['gst_rate'];
    gstAmounts = json['gst_amounts'];
    discountAmounts = json['discount_amounts'];
    totalAmounts = json['total_amounts'];
    currency = json['currency'];
    coupen = json['coupen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_name'] = this.consumerName;
    data['card_no'] = this.cardNo;
    data['issue_date'] = this.issueDate;
    data['expired_date'] = this.expiredDate;
    data['amount_transaction'] = this.amountTransaction;
    data['transaction_date'] = this.transactionDate;
    data['sub_total'] = this.subTotal;
    data['gst_rate'] = this.gstRate;
    data['gst_amounts'] = this.gstAmounts;
    data['discount_amounts'] = this.discountAmounts;
    data['total_amounts'] = this.totalAmounts;
    data['currency'] = this.currency;
    data['coupen'] = this.coupen;
    return data;
  }
}
