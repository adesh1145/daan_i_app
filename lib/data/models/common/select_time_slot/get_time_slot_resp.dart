class GetTimeSlotResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  GetTimeSlotResp({this.result, this.status, this.message, this.jSONData});

  GetTimeSlotResp.fromJson(Map<String, dynamic> json) {
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
  String? reminder;
  List<TimeSlots>? timeSlots;
  String? title1;
  CartData? cartData;

  JSONData({this.reminder, this.timeSlots, this.title1, this.cartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    reminder = json['reminder'];
    if (json['time_slots'] != null) {
      timeSlots = <TimeSlots>[];
      json['time_slots'].forEach((v) {
        timeSlots!.add(new TimeSlots.fromJson(v));
      });
    }
    title1 = json['title1'];
    cartData = json['cart_data'] != null
        ? new CartData.fromJson(json['cart_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reminder'] = this.reminder;
    if (this.timeSlots != null) {
      data['time_slots'] = this.timeSlots!.map((v) => v.toJson()).toList();
    }
    data['title1'] = this.title1;
    if (this.cartData != null) {
      data['cart_data'] = this.cartData!.toJson();
    }
    return data;
  }
}

class TimeSlots {
  int? slotId;
  String? fromTime;
  String? toTime;
  String? price;
  String? statusTxt;
  String? status;

  TimeSlots(
      {this.slotId,
      this.fromTime,
      this.toTime,
      this.price,
      this.statusTxt,
      this.status});

  TimeSlots.fromJson(Map<String, dynamic> json) {
    slotId = json['slot_id'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
    price = json['price'];
    statusTxt = json['status_txt'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slot_id'] = this.slotId;
    data['from_time'] = this.fromTime;
    data['to_time'] = this.toTime;
    data['price'] = this.price;
    data['status_txt'] = this.statusTxt;
    data['status'] = this.status;
    return data;
  }
}

class CartData {
  int? totalItem;
  String? totalPrice;
  String? couponDiscount;
  List<Null>? couponData;
  String? totalOfferedPrice;

  CartData(
      {this.totalItem,
      this.totalPrice,
      this.couponDiscount,
      this.couponData,
      this.totalOfferedPrice});

  CartData.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
    totalPrice = json['total_price'];
    couponDiscount = json['coupon_discount'];

    totalOfferedPrice = json['total_offered_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_item'] = this.totalItem;
    data['total_price'] = this.totalPrice;
    data['coupon_discount'] = this.couponDiscount;

    data['total_offered_price'] = this.totalOfferedPrice;
    return data;
  }
}
