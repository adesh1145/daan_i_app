class NearByNgoModel {
  bool? status;
  String? msg;
  Response? response;

  NearByNgoModel({this.status, this.msg, this.response});

  NearByNgoModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    response = json['response'] != null
        ? new Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.response != null) {
      data['response'] = this.response!.toJson();
    }
    return data;
  }
}

class Response {
  List<Ngo>? ngo;

  Response({this.ngo});

  Response.fromJson(Map<String, dynamic> json) {
    if (json['ngo'] != null) {
      ngo = <Ngo>[];
      json['ngo'].forEach((v) {
        ngo!.add(new Ngo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ngo != null) {
      data['ngo'] = this.ngo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Ngo {
  int? id;
  String? ngoName;
  String? email;
  String? mobile;
  String? ngoImage;
  String? regCertificateImage;
  String? panCardImage;
  String? ngoOwnerAme;
  String? regCertificateNo;
  String? panNo;
  String? gstNo;
  List<AcceptCategoryDetails>? acceptCategoryDetails;
  double? latitude;
  double? longitude;
  String? address;
  String? landmark;
  int? pincode;
  int? state;
  StateDetail? stateDetail;
  int? city;
  StateDetail? cityDetail;

  Ngo(
      {this.id,
      this.ngoName,
      this.email,
      this.mobile,
      this.ngoImage,
      this.regCertificateImage,
      this.panCardImage,
      this.ngoOwnerAme,
      this.regCertificateNo,
      this.panNo,
      this.gstNo,
      this.acceptCategoryDetails,
      this.latitude,
      this.longitude,
      this.address,
      this.landmark,
      this.pincode,
      this.state,
      this.stateDetail,
      this.city,
      this.cityDetail});

  Ngo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ngoName = json['ngo_name'];
    email = json['email'];
    mobile = json['mobile'];
    ngoImage = json['ngo_image'];
    regCertificateImage = json['reg_certificate_image'];
    panCardImage = json['pan_card_image'];
    ngoOwnerAme = json['ngo_owner_ame'];
    regCertificateNo = json['reg_certificate_no'];
    panNo = json['pan_no'];
    gstNo = json['gst_no'];
    if (json['accept_category_details'] != null) {
      acceptCategoryDetails = <AcceptCategoryDetails>[];
      json['accept_category_details'].forEach((v) {
        acceptCategoryDetails!.add(new AcceptCategoryDetails.fromJson(v));
      });
    }
    latitude = double.tryParse(json['latitude'].toString());
    longitude = double.tryParse(json['longitude'].toString());
    address = json['address'];
    landmark = json['landmark'];
    pincode = json['pincode'];
    state = json['state'];
    stateDetail = json['state_detail'] != null
        ? new StateDetail.fromJson(json['state_detail'])
        : null;
    city = json['city'];
    cityDetail = json['city_detail'] != null
        ? new StateDetail.fromJson(json['city_detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ngo_name'] = this.ngoName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['ngo_image'] = this.ngoImage;
    data['reg_certificate_image'] = this.regCertificateImage;
    data['pan_card_image'] = this.panCardImage;
    data['ngo_owner_ame'] = this.ngoOwnerAme;
    data['reg_certificate_no'] = this.regCertificateNo;
    data['pan_no'] = this.panNo;
    data['gst_no'] = this.gstNo;
    if (this.acceptCategoryDetails != null) {
      data['accept_category_details'] =
          this.acceptCategoryDetails!.map((v) => v.toJson()).toList();
    }
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['address'] = this.address;
    data['landmark'] = this.landmark;
    data['pincode'] = this.pincode;
    data['state'] = this.state;
    if (this.stateDetail != null) {
      data['state_detail'] = this.stateDetail!.toJson();
    }
    data['city'] = this.city;
    if (this.cityDetail != null) {
      data['city_detail'] = this.cityDetail!.toJson();
    }
    return data;
  }
}

class AcceptCategoryDetails {
  int? id;
  String? categoryName;
  String? img;

  AcceptCategoryDetails({this.id, this.categoryName, this.img});

  AcceptCategoryDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['category_name'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_name'] = this.categoryName;
    data['img'] = this.img;
    return data;
  }
}

class StateDetail {
  int? id;
  String? name;

  StateDetail({this.id, this.name});

  StateDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
