class AddLabTestCartResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  AddLabTestCartResp({this.result, this.status, this.message, this.jSONData});

  AddLabTestCartResp.fromJson(Map<String, dynamic> json) {
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
  String? status;
  String? msg;
  String? title1;
  CartData? cartData;

  JSONData({this.status, this.msg, this.title1, this.cartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    title1 = json['title1'];
    cartData = json['cart_data'] != null
        ? new CartData.fromJson(json['cart_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    data['title1'] = this.title1;
    if (this.cartData != null) {
      data['cart_data'] = this.cartData!.toJson();
    }
    return data;
  }
}

class CartData {
  int? totalItem;
  String? totalPrice;
  String? totalOfferedPrice;
  String? currencySumbol;
  String? countMsg;

  CartData(
      {this.totalItem,
      this.totalPrice,
      this.totalOfferedPrice,
      this.currencySumbol,
      this.countMsg});

  CartData.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
    totalPrice = json['total_price'];
    totalOfferedPrice = json['total_offered_price'];
    currencySumbol = json['currencySumbol'];
    countMsg = json['count_msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_item'] = this.totalItem;
    data['total_price'] = this.totalPrice;
    data['total_offered_price'] = this.totalOfferedPrice;
    data['currencySumbol'] = this.currencySumbol;
    data['count_msg'] = this.countMsg;
    return data;
  }
}
