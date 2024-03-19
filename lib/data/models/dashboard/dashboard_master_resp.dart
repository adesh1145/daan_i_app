class DashboardMasterResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  DashboardMasterResp({this.result, this.status, this.message, this.jSONData});

  DashboardMasterResp.fromJson(Map<String, dynamic> json) {
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
  List<MainSerivceList>? mainSerivceList;
  List<P1BannerList>? p1BannerList;
  List<PBanner2List>? pBanner2List;
  List<ConumerDetails>? conumerDetails;

  JSONData(
      {this.mainSerivceList,
      this.p1BannerList,
      this.pBanner2List,
      this.conumerDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['main_serivce_list'] != null) {
      mainSerivceList = <MainSerivceList>[];
      json['main_serivce_list'].forEach((v) {
        mainSerivceList!.add(new MainSerivceList.fromJson(v));
      });
    }
    if (json['p1_banner_list'] != null) {
      p1BannerList = <P1BannerList>[];
      json['p1_banner_list'].forEach((v) {
        p1BannerList!.add(new P1BannerList.fromJson(v));
      });
    }
    if (json['p_banner2_list'] != null) {
      pBanner2List = <PBanner2List>[];
      json['p_banner2_list'].forEach((v) {
        pBanner2List!.add(new PBanner2List.fromJson(v));
      });
    }
    if (json['conumer_details'] != null) {
      conumerDetails = <ConumerDetails>[];
      json['conumer_details'].forEach((v) {
        conumerDetails!.add(new ConumerDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mainSerivceList != null) {
      data['main_serivce_list'] =
          this.mainSerivceList!.map((v) => v.toJson()).toList();
    }
    if (this.p1BannerList != null) {
      data['p1_banner_list'] =
          this.p1BannerList!.map((v) => v.toJson()).toList();
    }
    if (this.pBanner2List != null) {
      data['p_banner2_list'] =
          this.pBanner2List!.map((v) => v.toJson()).toList();
    }
    if (this.conumerDetails != null) {
      data['conumer_details'] =
          this.conumerDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MainSerivceList {
  int? msId;
  String? msName;
  String? msIcon;

  MainSerivceList({this.msId, this.msName, this.msIcon});

  MainSerivceList.fromJson(Map<String, dynamic> json) {
    msId = json['ms_id'];
    msName = json['ms_name'];
    msIcon = json['ms_icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ms_id'] = this.msId;
    data['ms_name'] = this.msName;
    data['ms_icon'] = this.msIcon;
    return data;
  }
}

class P1BannerList {
  String? abSerialNo;
  String? abImageUrl;

  P1BannerList({this.abSerialNo, this.abImageUrl});

  P1BannerList.fromJson(Map<String, dynamic> json) {
    abSerialNo = json['ab_serial_no'];
    abImageUrl = json['ab_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ab_serial_no'] = this.abSerialNo;
    data['ab_image_url'] = this.abImageUrl;
    return data;
  }
}

class PBanner2List {
  String? abSerialNo;
  String? abImageUrl;

  PBanner2List({this.abSerialNo, this.abImageUrl});

  PBanner2List.fromJson(Map<String, dynamic> json) {
    abSerialNo = json['ab_serial_no'];
    abImageUrl = json['ab_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ab_serial_no'] = this.abSerialNo;
    data['ab_image_url'] = this.abImageUrl;
    return data;
  }
}

class ConumerDetails {
  String? name;
  String? email;
  String? customerMobile;
  String? mobile;
  String? refferalCode;
  String? consumerStatus;
  String? consumerWallet;
  String? velidateToken;
  String? bookingRating;
  String? cardHolderStatus;
  String? cardHolderStatusTxt;

  ConumerDetails(
      {this.name,
      this.email,
      this.customerMobile,
      this.mobile,
      this.refferalCode,
      this.consumerStatus,
      this.consumerWallet,
      this.velidateToken,
      this.bookingRating,
      this.cardHolderStatus,
      this.cardHolderStatusTxt});

  ConumerDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    customerMobile = json['customer_mobile'];
    mobile = json['mobile'];
    refferalCode = json['refferal_code'];
    consumerStatus = json['consumer_status'];
    consumerWallet = json['consumer_wallet'];
    velidateToken = json['velidate_token'];
    bookingRating = json['booking_rating'];
    cardHolderStatus = json['card_holder_status'];
    cardHolderStatusTxt = json['card_holder_status_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['customer_mobile'] = this.customerMobile;
    data['mobile'] = this.mobile;
    data['refferal_code'] = this.refferalCode;
    data['consumer_status'] = this.consumerStatus;
    data['consumer_wallet'] = this.consumerWallet;
    data['velidate_token'] = this.velidateToken;
    data['booking_rating'] = this.bookingRating;
    data['card_holder_status'] = this.cardHolderStatus;
    data['card_holder_status_txt'] = this.cardHolderStatusTxt;
    return data;
  }
}
