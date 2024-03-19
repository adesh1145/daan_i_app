class AfterPaymentResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  AfterPaymentResp({this.result, this.status, this.message, this.jSONData});

  AfterPaymentResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message '];
    if (json['JSONData'] != null) {
      jSONData = <JSONData>[];
      json['JSONData'].forEach((v) {
        jSONData!.add(new JSONData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message '] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  String? orderId;
  String? trackingId;
  String? bankRefNo;
  String? orderStatus;
  String? failureMessage;
  String? paymentMode;
  String? cardName;
  String? statusCode;
  String? statusMessage;
  String? currency;
  String? amount;
  String? billingName;
  String? billingAddress;
  String? bilLingCity;
  String? billingState;
  String? billingZip;
  String? billingCountry;
  String? billingTel;
  String? billingEmail;
  String? deliveryName;
  String? deliveryAddress;
  String? deliveryCity;
  String? deliveryState;
  String? eliveryZip;
  String? deliveryCountry;
  String? deliveryTel;
  String? merchantParam1;
  String? merchantParam2;
  String? merchantParam3;
  String? merchantParam4;
  String? merchantParam5;
  String? vault;
  String? offerType;
  String? offerCode;
  String? discountValue;
  String? merAmount;
  String? eciValue;
  String? retry;
  String? responseCode;
  String? billingNotes;
  String? transDate;
  String? binCountry;

  JSONData(
      {this.orderId,
      this.trackingId,
      this.bankRefNo,
      this.orderStatus,
      this.failureMessage,
      this.paymentMode,
      this.cardName,
      this.statusCode,
      this.statusMessage,
      this.currency,
      this.amount,
      this.billingName,
      this.billingAddress,
      this.bilLingCity,
      this.billingState,
      this.billingZip,
      this.billingCountry,
      this.billingTel,
      this.billingEmail,
      this.deliveryName,
      this.deliveryAddress,
      this.deliveryCity,
      this.deliveryState,
      this.eliveryZip,
      this.deliveryCountry,
      this.deliveryTel,
      this.merchantParam1,
      this.merchantParam2,
      this.merchantParam3,
      this.merchantParam4,
      this.merchantParam5,
      this.vault,
      this.offerType,
      this.offerCode,
      this.discountValue,
      this.merAmount,
      this.eciValue,
      this.retry,
      this.responseCode,
      this.billingNotes,
      this.transDate,
      this.binCountry});

  JSONData.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    trackingId = json['tracking_id'];
    bankRefNo = json['bank_ref_no'];
    orderStatus = json['order_status'];
    failureMessage = json['failure_message'];
    paymentMode = json['payment_mode'];
    cardName = json['card_name'];
    statusCode = json['status_code'];
    statusMessage = json['status_message'];
    currency = json['currency'];
    amount = json['amount'];
    billingName = json['billing_name'];
    billingAddress = json['billing_address'];
    bilLingCity = json['bil ling_city'];
    billingState = json['billing_state'];
    billingZip = json['billing_zip'];
    billingCountry = json['billing_country'];
    billingTel = json['billing_tel'];
    billingEmail = json['billing_email'];
    deliveryName = json['delivery_name'];
    deliveryAddress = json['delivery_address'];
    deliveryCity = json['delivery_city'];
    deliveryState = json['delivery_state'];
    eliveryZip = json['elivery_zip'];
    deliveryCountry = json['delivery_country'];
    deliveryTel = json['delivery_tel'];
    merchantParam1 = json['merchant_param1'];
    merchantParam2 = json['merchant_param2'];
    merchantParam3 = json['merchant_param3'];
    merchantParam4 = json['merchant_param4'];
    merchantParam5 = json['merchant_param5'];
    vault = json['vault'];
    offerType = json['offer_type'];
    offerCode = json['offer_code'];
    discountValue = json['discount_value'];
    merAmount = json['mer_amount'];
    eciValue = json['eci_value'];
    retry = json['retry'];
    responseCode = json['response_code'];
    billingNotes = json['billing _notes'];
    transDate = json['trans_date'];
    binCountry = json['bin_country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId;
    data['tracking_id'] = this.trackingId;
    data['bank_ref_no'] = this.bankRefNo;
    data['order_status'] = this.orderStatus;
    data['failure_message'] = this.failureMessage;
    data['payment_mode'] = this.paymentMode;
    data['card_name'] = this.cardName;
    data['status_code'] = this.statusCode;
    data['status_message'] = this.statusMessage;
    data['currency'] = this.currency;
    data['amount'] = this.amount;
    data['billing_name'] = this.billingName;
    data['billing_address'] = this.billingAddress;
    data['bil ling_city'] = this.bilLingCity;
    data['billing_state'] = this.billingState;
    data['billing_zip'] = this.billingZip;
    data['billing_country'] = this.billingCountry;
    data['billing_tel '] = this.billingTel;
    data['billing_email'] = this.billingEmail;
    data['delivery_name'] = this.deliveryName;
    data['delivery_address'] = this.deliveryAddress;
    data['delivery_city'] = this.deliveryCity;
    data['delivery_state'] = this.deliveryState;
    data['elivery_zip'] = this.eliveryZip;
    data['delivery_country'] = this.deliveryCountry;
    data['delivery_tel'] = this.deliveryTel;
    data['merchant_param1'] = this.merchantParam1;
    data['merchant_param2'] = this.merchantParam2;
    data['merchant_param3'] = this.merchantParam3;
    data['merchant_param4'] = this.merchantParam4;
    data['merchant_param5'] = this.merchantParam5;
    data['vault'] = this.vault;
    data['offer_type'] = this.offerType;
    data['offer_code'] = this.offerCode;
    data['discount_value'] = this.discountValue;
    data['mer_amount'] = this.merAmount;
    data['eci_value'] = this.eciValue;
    data['retry'] = this.retry;
    data['response_code'] = this.responseCode;
    data['billing _notes'] = this.billingNotes;
    data['trans_date'] = this.transDate;
    data['bin_country'] = this.binCountry;
    return data;
  }
}
