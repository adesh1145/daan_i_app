class MedicineAddCartResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MedicineAddCartResp({this.result, this.status, this.message, this.jSONData});

  MedicineAddCartResp.fromJson(Map<String, dynamic> json) {
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
  List<CardDetails>? cardDetails;

  JSONData({this.cardDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['cardDetails'] != null) {
      cardDetails = <CardDetails>[];
      json['cardDetails'].forEach((v) {
        cardDetails!.add(new CardDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cardDetails != null) {
      data['cardDetails'] = this.cardDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CardDetails {
  int? productCount;
  double? totalActualPrice;
  double? totalOfferedPrice;
  double? totalDiscountPrice;

  CardDetails(
      {this.productCount,
      this.totalActualPrice,
      this.totalOfferedPrice,
      this.totalDiscountPrice});

  CardDetails.fromJson(Map<String, dynamic> json) {
    productCount = json['productCount'];
    totalActualPrice = double.tryParse(json['totalActualPrice'].toString());
    totalOfferedPrice = double.tryParse(json['totalOfferedPrice'].toString());
    totalDiscountPrice = double.tryParse(json['totalDiscountPrice'].toString());
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productCount'] = this.productCount;
    data['totalActualPrice'] = this.totalActualPrice;
    data['totalOfferedPrice'] = this.totalOfferedPrice;
    data['totalDiscountPrice'] = this.totalDiscountPrice;
    return data;
  }
}
