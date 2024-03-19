class WalletScreenResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  WalletScreenResp({this.result, this.status, this.message, this.jSONData});

  WalletScreenResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
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
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  WalletDetails? walletDetails;
  List<Transections>? transections;

  JSONData({this.walletDetails, this.transections});

  JSONData.fromJson(Map<String, dynamic> json) {
    walletDetails = json['wallet_details'] != null
        ? new WalletDetails.fromJson(json['wallet_details'])
        : null;
    if (json['transections'] != null) {
      transections = <Transections>[];
      json['transections'].forEach((v) {
        transections!.add(new Transections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.walletDetails != null) {
      data['wallet_details'] = this.walletDetails!.toJson();
    }
    if (this.transections != null) {
      data['transections'] = this.transections!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WalletDetails {
  int? consumerId;
  String? consumerWalletAmount;
  String? consumerCurrency;
  String? requestPendingAmount;

  WalletDetails(
      {this.consumerId,
      this.consumerWalletAmount,
      this.consumerCurrency,
      this.requestPendingAmount});

  WalletDetails.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    consumerWalletAmount = json['consumer_wallet_amount'];
    consumerCurrency = json['consumer_currency'];
    requestPendingAmount = json['request_pending_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['consumer_wallet_amount'] = this.consumerWalletAmount;
    data['consumer_currency'] = this.consumerCurrency;
    data['request_pending_amount'] = this.requestPendingAmount;
    return data;
  }
}

class Transections {
  int? transectionId;
  String? amount;
  String? paymentId;
  String? note;
  String? time;
  String? typeCrDb;
  String? previoucAmount;
  String? newAmount;
  String? typeCrDbNote;
  String? currency;

  Transections(
      {this.transectionId,
      this.amount,
      this.paymentId,
      this.note,
      this.time,
      this.typeCrDb,
      this.previoucAmount,
      this.newAmount,
      this.typeCrDbNote,
      this.currency});

  Transections.fromJson(Map<String, dynamic> json) {
    transectionId = json['transection_id'];
    amount = json['amount'];
    paymentId = json['payment_id'];
    note = json['note'];
    time = json['time'];
    typeCrDb = json['type_cr_db'];
    previoucAmount = json['previouc_amount'];
    newAmount = json['new_amount'];
    typeCrDbNote = json['type_cr_db_note'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['transection_id'] = this.transectionId;
    data['amount'] = this.amount;
    data['payment_id'] = this.paymentId;
    data['note'] = this.note;
    data['time'] = this.time;
    data['type_cr_db'] = this.typeCrDb;
    data['previouc_amount'] = this.previoucAmount;
    data['new_amount'] = this.newAmount;
    data['type_cr_db_note'] = this.typeCrDbNote;
    data['currency'] = this.currency;
    return data;
  }
}
