class AmbulaneDashboardResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  AmbulaneDashboardResp(
      {this.result, this.status, this.message, this.jSONData});

  AmbulaneDashboardResp.fromJson(Map<String, dynamic> json) {
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
  List<ConumerDetails>? conumerDetails;
  List<BookingType>? bookingType;
  List<P1BannerList>? p1BannerList;

  JSONData({this.conumerDetails, this.bookingType, this.p1BannerList});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['conumer_details'] != null) {
      conumerDetails = <ConumerDetails>[];
      json['conumer_details'].forEach((v) {
        conumerDetails!.add(new ConumerDetails.fromJson(v));
      });
    }
    if (json['booking_type'] != null) {
      bookingType = <BookingType>[];
      json['booking_type'].forEach((v) {
        bookingType!.add(new BookingType.fromJson(v));
      });
    }
    if (json['p1_banner_list'] != null) {
      p1BannerList = <P1BannerList>[];
      json['p1_banner_list'].forEach((v) {
        p1BannerList!.add(new P1BannerList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.conumerDetails != null) {
      data['conumer_details'] =
          this.conumerDetails!.map((v) => v.toJson()).toList();
    }
    if (this.bookingType != null) {
      data['booking_type'] = this.bookingType!.map((v) => v.toJson()).toList();
    }
    if (this.p1BannerList != null) {
      data['p1_banner_list'] =
          this.p1BannerList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ConumerDetails {
  String? name;
  String? email;
  String? mobile;
  String? refferalCode;
  String? consumerStatus;
  String? consumerWallet;
  String? velidateToken;
  String? pinkAmbulanceStatus;
  String? pinkAmbulanceStatusTxt;
  String? fireBrigadeAmbulanceStatus;
  String? fireBrigadeAmbulanceStatusTxt;
  String? animalAmbulanceStatus;
  String? animalAmbulanceStatusTxt;
  String? bookingRating;

  ConumerDetails(
      {this.name,
      this.email,
      this.mobile,
      this.refferalCode,
      this.consumerStatus,
      this.consumerWallet,
      this.velidateToken,
      this.pinkAmbulanceStatus,
      this.pinkAmbulanceStatusTxt,
      this.fireBrigadeAmbulanceStatus,
      this.fireBrigadeAmbulanceStatusTxt,
      this.animalAmbulanceStatus,
      this.animalAmbulanceStatusTxt,
      this.bookingRating});

  ConumerDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    refferalCode = json['refferal_code'];
    consumerStatus = json['consumer_status'];
    consumerWallet = json['consumer_wallet'];
    velidateToken = json['velidate_token'];
    pinkAmbulanceStatus = json['pink_ambulance_status'];
    pinkAmbulanceStatusTxt = json['pink_ambulance_status_txt'];
    fireBrigadeAmbulanceStatus = json['fire_brigade_ambulance_status'];
    fireBrigadeAmbulanceStatusTxt = json['fire_brigade_ambulance_status_txt'];
    animalAmbulanceStatus = json['animal_ambulance_status'];
    animalAmbulanceStatusTxt = json['animal_ambulance_status_txt'];
    bookingRating = json['booking_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['refferal_code'] = this.refferalCode;
    data['consumer_status'] = this.consumerStatus;
    data['consumer_wallet'] = this.consumerWallet;
    data['velidate_token'] = this.velidateToken;
    data['pink_ambulance_status'] = this.pinkAmbulanceStatus;
    data['pink_ambulance_status_txt'] = this.pinkAmbulanceStatusTxt;
    data['fire_brigade_ambulance_status'] = this.fireBrigadeAmbulanceStatus;
    data['fire_brigade_ambulance_status_txt'] =
        this.fireBrigadeAmbulanceStatusTxt;
    data['animal_ambulance_status'] = this.animalAmbulanceStatus;
    data['animal_ambulance_status_txt'] = this.animalAmbulanceStatusTxt;
    data['booking_rating'] = this.bookingRating;
    return data;
  }
}

class BookingType {
  String? bookingType;
  String? bookingTypeName;
  String? typeImage;
  String? bookingTypeTxt;

  BookingType(
      {this.bookingType,
      this.bookingTypeName,
      this.typeImage,
      this.bookingTypeTxt});

  BookingType.fromJson(Map<String, dynamic> json) {
    bookingType = json['booking_type'];
    bookingTypeName = json['booking_type_name'];
    typeImage = json['type_image'];
    bookingTypeTxt = json['booking_type_txt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['booking_type'] = this.bookingType;
    data['booking_type_name'] = this.bookingTypeName;
    data['type_image'] = this.typeImage;
    data['booking_type_txt'] = this.bookingTypeTxt;
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
