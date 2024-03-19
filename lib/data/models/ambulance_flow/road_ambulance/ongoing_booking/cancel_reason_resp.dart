class CancelReasonResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  CancelReasonResp({this.result, this.status, this.message, this.jSONData});

  CancelReasonResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    jSONData = json['JSONData'] != null
        ? new JSONData.fromJson(json['JSONData'])
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

class JSONData {
  List<CancelReason>? cancelReason;

  JSONData({this.cancelReason});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['cancel_reason'] != null) {
      cancelReason = <CancelReason>[];
      json['cancel_reason'].forEach((v) {
        cancelReason!.add(new CancelReason.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cancelReason != null) {
      data['cancel_reason'] =
          this.cancelReason!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CancelReason {
  String? bookingCancelReasonsId;
  String? bookingCancelReasonsText;
  String? bookingCancelPaneltyAmount;
  String? currencySymbol;

  CancelReason(
      {this.bookingCancelReasonsId,
        this.bookingCancelReasonsText,
        this.bookingCancelPaneltyAmount,
        this.currencySymbol});

  CancelReason.fromJson(Map<String, dynamic> json) {
    bookingCancelReasonsId = json['booking_cancel_reasons_id'];
    bookingCancelReasonsText = json['booking_cancel_reasons_text'];
    bookingCancelPaneltyAmount = json['booking_cancel_panelty_amount'];
    currencySymbol = json['currency_symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['booking_cancel_reasons_id'] = this.bookingCancelReasonsId;
    data['booking_cancel_reasons_text'] = this.bookingCancelReasonsText;
    data['booking_cancel_panelty_amount'] = this.bookingCancelPaneltyAmount;
    data['currency_symbol'] = this.currencySymbol;
    return data;
  }
}
