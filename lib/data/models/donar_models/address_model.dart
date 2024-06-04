class AddressModel {
  bool? status;
  String? msg;
  Response? response;

  AddressModel({this.status, this.msg, this.response});

  AddressModel.fromJson(Map<String, dynamic> json) {
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
  List<Address>? address;

  Response({this.address});

  Response.fromJson(Map<String, dynamic> json) {
    if (json['address'] != null) {
      address = <Address>[];
      json['address'].forEach((v) {
        address!.add(Address.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (address != null) {
      data['address'] = address!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Address {
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

  Address(
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

  Address.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    latitude = double.tryParse(json['latitude'].toString());
    longitude = double.tryParse(json['longitude'].toString());
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
