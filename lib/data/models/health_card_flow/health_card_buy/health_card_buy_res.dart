class HealthCardDashboardBuyRes {
  String? result;
  String? status;
  String? message;
  HealthCardDashboardBuyData? jSONData;

  HealthCardDashboardBuyRes(
      {this.result, this.status, this.message, this.jSONData});

  HealthCardDashboardBuyRes.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    jSONData = json['JSONData'] != null
        ? new HealthCardDashboardBuyData.fromJson(json['JSONData'])
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

class HealthCardDashboardBuyData {
  CardDeatils? cardDeatils;
  List<WhyChoose>? whyChoose;
  List<CardPlan>? cardPlan;
  String? currencySymbol;
  String? couponCode;

  HealthCardDashboardBuyData(
      {this.cardDeatils,
        this.whyChoose,
        this.cardPlan,
        this.currencySymbol,
        this.couponCode});

  HealthCardDashboardBuyData.fromJson(Map<String, dynamic> json) {
    cardDeatils = json['card_deatils'] != null
        ? new CardDeatils.fromJson(json['card_deatils'])
        : null;
    if (json['why_choose'] != null) {
      whyChoose = <WhyChoose>[];
      json['why_choose'].forEach((v) {
        whyChoose!.add(new WhyChoose.fromJson(v));
      });
    }
    if (json['card_plan'] != null) {
      cardPlan = <CardPlan>[];
      json['card_plan'].forEach((v) {
        cardPlan!.add(new CardPlan.fromJson(v));
      });
    }
    currencySymbol = json['currency_symbol'];
    couponCode = json['coupon_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cardDeatils != null) {
      data['card_deatils'] = this.cardDeatils!.toJson();
    }
    if (this.whyChoose != null) {
      data['why_choose'] = this.whyChoose!.map((v) => v.toJson()).toList();
    }
    if (this.cardPlan != null) {
      data['card_plan'] = this.cardPlan!.map((v) => v.toJson()).toList();
    }
    data['currency_symbol'] = this.currencySymbol;
    data['coupon_code'] = this.couponCode;
    return data;
  }
}

class CardDeatils {
  String? cardName;
  String? cardCustomerName;
  String? subId;
  String? cardIssueDate;
  String? cardEndDate;
  String? cardNo;
  String? cardFirstName;
  String? cardLastName;
  String? cardStatus;

  CardDeatils(
      {this.cardName,
        this.cardCustomerName,
        this.subId,
        this.cardIssueDate,
        this.cardEndDate,
        this.cardNo,
        this.cardFirstName,
        this.cardLastName,
        this.cardStatus});

  CardDeatils.fromJson(Map<String, dynamic> json) {
    cardName = json['card_name'];
    cardCustomerName = json['card_customer_name'];
    subId = json['sub_id'];
    cardIssueDate = json['card_issue_date'];
    cardEndDate = json['card_end_date'];
    cardNo = json['card_no'];
    cardFirstName = json['card_first_name'];
    cardLastName = json['card_last_name'];
    cardStatus = json['card_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['card_name'] = this.cardName;
    data['card_customer_name'] = this.cardCustomerName;
    data['sub_id'] = this.subId;
    data['card_issue_date'] = this.cardIssueDate;
    data['card_end_date'] = this.cardEndDate;
    data['card_no'] = this.cardNo;
    data['card_first_name'] = this.cardFirstName;
    data['card_last_name'] = this.cardLastName;
    data['card_status'] = this.cardStatus;
    return data;
  }
}

class WhyChoose {
  int? servicesId;
  String? servicesDetails;
  String? servicesIcon;

  WhyChoose({this.servicesId, this.servicesDetails, this.servicesIcon});

  WhyChoose.fromJson(Map<String, dynamic> json) {
    servicesId = json['services_id'];
    servicesDetails = json['services_details'];
    servicesIcon = json['services_icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['services_id'] = this.servicesId;
    data['services_details'] = this.servicesDetails;
    data['services_icon'] = this.servicesIcon;
    return data;
  }
}

class CardPlan {
  int? planId;
  String? planDuration;
  String? planDurationInDay;
  String? planMrp;
  String? planDiscountAmount;
  String? planTotalAmount;
  List<PlanBebefits>? planBebefits;

  CardPlan(
      {this.planId,
        this.planDuration,
        this.planDurationInDay,
        this.planMrp,
        this.planDiscountAmount,
        this.planTotalAmount,
        this.planBebefits});

  CardPlan.fromJson(Map<String, dynamic> json) {
    planId = json['plan_id'];
    planDuration = json['plan_duration'];
    planDurationInDay = json['plan_duration_in_day'];
    planMrp = json['plan_mrp'];
    planDiscountAmount = json['plan_discount_amount'];
    planTotalAmount = json['plan_total_amount'];
    if (json['plan_bebefits'] != null) {
      planBebefits = <PlanBebefits>[];
      json['plan_bebefits'].forEach((v) {
        planBebefits!.add(new PlanBebefits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['plan_id'] = this.planId;
    data['plan_duration'] = this.planDuration;
    data['plan_duration_in_day'] = this.planDurationInDay;
    data['plan_mrp'] = this.planMrp;
    data['plan_discount_amount'] = this.planDiscountAmount;
    data['plan_total_amount'] = this.planTotalAmount;
    if (this.planBebefits != null) {
      data['plan_bebefits'] =
          this.planBebefits!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PlanBebefits {
  int? benefitId;
  String? bebefitHeader;
  String? bebefitDesc;
  String? bebefitIcon;

  PlanBebefits(
      {this.benefitId, this.bebefitHeader, this.bebefitDesc, this.bebefitIcon});

  PlanBebefits.fromJson(Map<String, dynamic> json) {
    benefitId = json['benefit_id'];
    bebefitHeader = json['bebefit_header'];
    bebefitDesc = json['bebefit_desc'];
    bebefitIcon = json['bebefit_icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['benefit_id'] = this.benefitId;
    data['bebefit_header'] = this.bebefitHeader;
    data['bebefit_desc'] = this.bebefitDesc;
    data['bebefit_icon'] = this.bebefitIcon;
    return data;
  }
}
