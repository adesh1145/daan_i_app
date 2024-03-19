class HealthDashBoardResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  HealthDashBoardResp({this.result, this.status, this.message, this.jSONData});

  HealthDashBoardResp.fromJson(Map<String, dynamic> json) {
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
  List<DataList>? dataList;
  List<CardDetails>? cardDetails;

  JSONData({this.dataList, this.cardDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['data_list'] != null) {
      dataList = <DataList>[];
      json['data_list'].forEach((v) {
        dataList!.add(new DataList.fromJson(v));
      });
    }
    if (json['card_details'] != null) {
      cardDetails = <CardDetails>[];
      json['card_details'].forEach((v) {
        cardDetails!.add(new CardDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dataList != null) {
      data['data_list'] = this.dataList!.map((v) => v.toJson()).toList();
    }
    if (this.cardDetails != null) {
      data['card_details'] = this.cardDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataList {
  SourceBasicDetails? sourceBasicDetails;

  DataList({this.sourceBasicDetails});

  DataList.fromJson(Map<String, dynamic> json) {
    sourceBasicDetails = json['source_basic_details'] != null
        ? new SourceBasicDetails.fromJson(json['source_basic_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sourceBasicDetails != null) {
      data['source_basic_details'] = this.sourceBasicDetails!.toJson();
    }
    return data;
  }
}

class SourceBasicDetails {
  String? sourceText;
  String? masterCategory;
  String? sourceIcon;
  String? sourceDiscount;
  String? sourceDesc;
  List<SourceList>? sourceList;

  SourceBasicDetails(
      {this.sourceText,
      this.masterCategory,
      this.sourceIcon,
      this.sourceDiscount,
      this.sourceDesc,
      this.sourceList});

  SourceBasicDetails.fromJson(Map<String, dynamic> json) {
    sourceText = json['source_text'];
    masterCategory = json['master_category'];
    sourceIcon = json['source_icon'];
    sourceDiscount = json['source_discount'];
    sourceDesc = json['source_desc'];
    if (json['source_list'] != null) {
      sourceList = <SourceList>[];
      json['source_list'].forEach((v) {
        sourceList!.add(new SourceList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source_text'] = this.sourceText;
    data['master_category'] = this.masterCategory;
    data['source_icon'] = this.sourceIcon;
    data['source_discount'] = this.sourceDiscount;
    data['source_desc'] = this.sourceDesc;
    if (this.sourceList != null) {
      data['source_list'] = this.sourceList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SourceList {
  String? sourceId;
  String? sourceName;
  String? sourceMobileNo;
  String? sourceAddress;
  String? sourceCity;
  String? sourceLat;
  String? sourceLong;
  String? sourceImage;
  String? discountUpTo;
  String? distance;
  String? favStatus;
  String? favStatusTxt;

  SourceList(
      {this.sourceId,
      this.sourceName,
      this.sourceMobileNo,
      this.sourceAddress,
      this.sourceCity,
      this.sourceLat,
      this.sourceLong,
      this.sourceImage,
      this.discountUpTo,
      this.distance,
      this.favStatus,
      this.favStatusTxt});

  SourceList.fromJson(Map<String, dynamic> json) {
    sourceId = json['source_id'];
    sourceName = json['source_name'];
    sourceMobileNo = json['source_mobile_no'];
    sourceAddress = json['source_address'];
    sourceCity = json['source_city'];
    sourceLat = json['source_lat'];
    sourceLong = json['source_long'];
    sourceImage = json['source_image'];
    discountUpTo = json['discount_up_to'];
    distance = json['distance'];
    favStatus = json['fav_status'];
    favStatusTxt = json['fav_status_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source_id'] = this.sourceId;
    data['source_name'] = this.sourceName;
    data['source_mobile_no'] = this.sourceMobileNo;
    data['source_address'] = this.sourceAddress;
    data['source_city'] = this.sourceCity;
    data['source_lat'] = this.sourceLat;
    data['source_long'] = this.sourceLong;
    data['source_image'] = this.sourceImage;
    data['discount_up_to'] = this.discountUpTo;
    data['distance'] = this.distance;
    data['fav_status'] = this.favStatus;
    data['fav_status_txt'] = this.favStatusTxt;
    return data;
  }
}

class CardDetails {
  UserDetails? userDetails;
  PlanDetails? planDetails;
  PayDetails? payDetails;

  CardDetails({this.userDetails, this.planDetails, this.payDetails});

  CardDetails.fromJson(Map<String, dynamic> json) {
    userDetails = json['user_details'] != null
        ? new UserDetails.fromJson(json['user_details'])
        : null;
    planDetails = json['plan_details'] != null
        ? new PlanDetails.fromJson(json['plan_details'])
        : null;
    payDetails = json['pay_details'] != null
        ? new PayDetails.fromJson(json['pay_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userDetails != null) {
      data['user_details'] = this.userDetails!.toJson();
    }
    if (this.planDetails != null) {
      data['plan_details'] = this.planDetails!.toJson();
    }
    if (this.payDetails != null) {
      data['pay_details'] = this.payDetails!.toJson();
    }
    return data;
  }
}

class UserDetails {
  int? subscriptionId;
  String? consumerNameFirst;
  String? consumerNameLast;
  String? consumerMobile;
  String? consumerGender;
  String? cardNo;
  String? cardIssueDate;
  String? cardExpDate;
  int? cardStatus;
  String? cardStatusTxt;

  UserDetails(
      {this.subscriptionId,
      this.consumerNameFirst,
      this.consumerNameLast,
      this.consumerMobile,
      this.consumerGender,
      this.cardNo,
      this.cardIssueDate,
      this.cardExpDate,
      this.cardStatus,
      this.cardStatusTxt});

  UserDetails.fromJson(Map<String, dynamic> json) {
    subscriptionId = json['subscription_id'];
    consumerNameFirst = json['consumer_name_first'];
    consumerNameLast = json['consumer_name_last'];
    consumerMobile = json['consumer_mobile'];
    consumerGender = json['consumer_gender'];
    cardNo = json['card_no'];
    cardIssueDate = json['card_issue_date'];
    cardExpDate = json['card_exp_date'];
    cardStatus = json['card_status'];
    cardStatusTxt = json['card_status_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subscription_id'] = this.subscriptionId;
    data['consumer_name_first'] = this.consumerNameFirst;
    data['consumer_name_last'] = this.consumerNameLast;
    data['consumer_mobile'] = this.consumerMobile;
    data['consumer_gender'] = this.consumerGender;
    data['card_no'] = this.cardNo;
    data['card_issue_date'] = this.cardIssueDate;
    data[' card_exp_date'] = this.cardExpDate;
    data[' card_status'] = this.cardStatus;
    data[' card_status_txt'] = this.cardStatusTxt;
    return data;
  }
}

class PlanDetails {
  String? planName;
  String? planDuration;
  String? planRate;
  String? planDetails;

  PlanDetails(
      {this.planName, this.planDuration, this.planRate, this.planDetails});

  PlanDetails.fromJson(Map<String, dynamic> json) {
    planName = json['plan_name'];
    planDuration = json['plan_duration'];
    planRate = json['plan_rate'];
    planDetails = json['plan_details'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['plan_name'] = this.planName;
    data['plan_duration'] = this.planDuration;
    data['plan_rate'] = this.planRate;
    data['plan_details'] = this.planDetails;
    return data;
  }
}

class PayDetails {
  String? paySubTotal;
  String? payGst;
  String? currencySymbol;
  String? payGstAmount;
  String? paySubDiscount;
  String? payTotalAmount;

  PayDetails(
      {this.paySubTotal,
      this.payGst,
      this.currencySymbol,
      this.payGstAmount,
      this.paySubDiscount,
      this.payTotalAmount});

  PayDetails.fromJson(Map<String, dynamic> json) {
    paySubTotal = json['pay_sub_total'];
    payGst = json['pay_gst'];
    currencySymbol = json['currency_symbol'];
    payGstAmount = json['pay_gst_amount'];
    paySubDiscount = json['pay_sub_discount'];
    payTotalAmount = json['pay_total_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pay_sub_total'] = this.paySubTotal;
    data['pay_gst'] = this.payGst;
    data['currency_symbol'] = this.currencySymbol;
    data['pay_gst_amount'] = this.payGstAmount;
    data['pay_sub_discount'] = this.paySubDiscount;
    data['pay_total_amount'] = this.payTotalAmount;
    return data;
  }
}
