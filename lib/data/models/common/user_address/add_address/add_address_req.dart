class AddAddressReq {
  String? userId;
  String? houseLocality;
  String? pincode;
  String? name;
  String? contactNo;
  String? landMark;
  String? cityName;
  String? authKey;
  String? addressType;
  String? latitude;
  String? longitude;

  AddAddressReq(
      {this.userId,
      this.houseLocality,
      this.pincode,
      this.name,
      this.contactNo,
      this.landMark,
      this.cityName,
      this.authKey,
      this.addressType,
      this.latitude,
      this.longitude});

  AddAddressReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    houseLocality = json['house_locality'];
    pincode = json['pincode'];
    name = json['name'];
    contactNo = json['contact_no'];
    landMark = json['land_mark'];
    cityName = json['city_name'];
    authKey = json['auth_key'];
    addressType = json['address_type'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['house_locality'] = this.houseLocality;
    data['pincode'] = this.pincode;
    data['name'] = this.name;
    data['contact_no'] = this.contactNo;
    data['land_mark'] = this.landMark;
    data['city_name'] = this.cityName;
    data['auth_key'] = this.authKey;
    data['address_type'] = this.addressType;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
