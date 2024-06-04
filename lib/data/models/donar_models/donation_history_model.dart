class DonationHistoryModel {
  bool? status;
  String? msg;
  Response? response;

  DonationHistoryModel({this.status, this.msg, this.response});

  DonationHistoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    response =
        json['response'] != null ? Response.fromJson(json['response']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['msg'] = msg;
    if (response != null) {
      data['response'] = response!.toJson();
    }
    return data;
  }
}

class Response {
  List<Donation>? donation;

  Response({this.donation});

  Response.fromJson(Map<String, dynamic> json) {
    if (json['donation'] != null) {
      donation = <Donation>[];
      json['donation'].forEach((v) {
        donation!.add(Donation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (donation != null) {
      data['donation'] = donation!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Donation {
  int? id;
  String? orderId;
  int? category;
  CategoryDetail? categoryDetail;
  double? weight;
  String? description;
  PickupAddress? pickupAddress;
  int? ngo;
  NgoDetail? ngoDetail;
  String? orderStatus;
  String? createdDate;
  String? updatedDate;
  List<ImageUrls>? imageUrls;

  Donation(
      {this.id,
      this.orderId,
      this.category,
      this.categoryDetail,
      this.weight,
      this.description,
      this.pickupAddress,
      this.ngo,
      this.ngoDetail,
      this.orderStatus,
      this.createdDate,
      this.updatedDate,
      this.imageUrls});

  Donation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    category = json['category'];
    categoryDetail = json['category_detail'] != null
        ? CategoryDetail.fromJson(json['category_detail'])
        : null;
    weight = double.tryParse(json['weight'].toString());
    description = json['description'];
    pickupAddress = json['pickup_address'] != null
        ? PickupAddress.fromJson(json['pickup_address'])
        : null;
    ngo = json['ngo'];
    ngoDetail = json['ngo_detail'] != null
        ? NgoDetail.fromJson(json['ngo_detail'])
        : null;
    orderStatus = json['order_status'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
    if (json['image_urls'] != null) {
      imageUrls = <ImageUrls>[];
      json['image_urls'].forEach((v) {
        imageUrls!.add(ImageUrls.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['order_id'] = orderId;
    data['category'] = category;
    data['weight'] = weight;
    data['description'] = description;
    if (pickupAddress != null) {
      data['pickup_address'] = pickupAddress!.toJson();
    }
    data['ngo'] = ngo;
    if (ngoDetail != null) {
      data['ngo_detail'] = ngoDetail!.toJson();
    }
    data['order_status'] = orderStatus;
    data['created_date'] = createdDate;
    data['updated_date'] = updatedDate;
    if (imageUrls != null) {
      data['image_urls'] = imageUrls!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryDetail {
  int? id;
  String? categoryName;
  String? img;

  CategoryDetail({this.id, this.categoryName, this.img});

  CategoryDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['category_name'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['category_name'] = categoryName;
    data['img'] = img;
    return data;
  }
}

class PickupAddress {
  int? id;
  String? name;
  String? mobile;
  double? latitude;
  double? longitude;
  String? address;
  String? landmark;
  int? pincode;
  StateDetail? stateDetail;
  StateDetail? cityDetail;
  bool? isDefault;
  bool? isActive;

  PickupAddress(
      {this.id,
      this.name,
      this.mobile,
      this.latitude,
      this.longitude,
      this.address,
      this.landmark,
      this.pincode,
      this.stateDetail,
      this.cityDetail,
      this.isDefault,
      this.isActive});

  PickupAddress.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    landmark = json['landmark'];
    pincode = json['pincode'];
    stateDetail = json['state_detail'] != null
        ? StateDetail.fromJson(json['state_detail'])
        : null;
    cityDetail = json['city_detail'] != null
        ? StateDetail.fromJson(json['city_detail'])
        : null;
    isDefault = json['is_default'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['mobile'] = mobile;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['landmark'] = landmark;
    data['pincode'] = pincode;
    if (stateDetail != null) {
      data['state_detail'] = stateDetail!.toJson();
    }
    if (cityDetail != null) {
      data['city_detail'] = cityDetail!.toJson();
    }
    data['is_default'] = isDefault;
    data['is_active'] = isActive;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class NgoDetail {
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

  NgoDetail(
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

  NgoDetail.fromJson(Map<String, dynamic> json) {
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
        acceptCategoryDetails!.add(AcceptCategoryDetails.fromJson(v));
      });
    }
    latitude = double.tryParse(json['latitude'].toString());
    longitude = double.tryParse(json['longitude'].toString());
    address = json['address'];
    landmark = json['landmark'];
    pincode = json['pincode'];
    state = json['state'];
    stateDetail = json['state_detail'] != null
        ? StateDetail.fromJson(json['state_detail'])
        : null;
    city = json['city'];
    cityDetail = json['city_detail'] != null
        ? StateDetail.fromJson(json['city_detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['ngo_name'] = ngoName;
    data['email'] = email;
    data['mobile'] = mobile;
    data['ngo_image'] = ngoImage;
    data['reg_certificate_image'] = regCertificateImage;
    data['pan_card_image'] = panCardImage;
    data['ngo_owner_ame'] = ngoOwnerAme;
    data['reg_certificate_no'] = regCertificateNo;
    data['pan_no'] = panNo;
    data['gst_no'] = gstNo;
    if (acceptCategoryDetails != null) {
      data['accept_category_details'] =
          acceptCategoryDetails!.map((v) => v.toJson()).toList();
    }
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['address'] = address;
    data['landmark'] = landmark;
    data['pincode'] = pincode;
    data['state'] = state;
    if (stateDetail != null) {
      data['state_detail'] = stateDetail!.toJson();
    }
    data['city'] = city;
    if (cityDetail != null) {
      data['city_detail'] = cityDetail!.toJson();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['category_name'] = categoryName;
    data['img'] = img;
    return data;
  }
}

class ImageUrls {
  int? id;
  String? image;

  ImageUrls({this.id, this.image});

  ImageUrls.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    return data;
  }
}
