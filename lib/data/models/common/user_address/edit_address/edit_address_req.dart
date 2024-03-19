class EditAddressReq {
  String? userId;
  String? addressId;
  String? houseLocality;
  String? pincode;
  String? name;
  String? contactNo;
  String? landMark;
  String? addressType;
  String? cityName;
  String? authKey;
  String? latitude;
  String? longitude;

  EditAddressReq(
      {this.userId,
      this.addressId,
      this.houseLocality,
      this.pincode,
      this.name,
      this.contactNo,
      this.landMark,
      this.addressType,
      this.cityName,
      this.authKey,
      this.latitude,
      this.longitude});

  EditAddressReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    addressId = json['address_id'];
    houseLocality = json['house_locality'];
    pincode = json['pincode'];
    name = json['name'];
    contactNo = json['contact_no'];
    landMark = json['land_mark'];
    addressType = json['address_type'];
    authKey = json['auth_key'];
    cityName = json['city_name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['address_id'] = this.addressId;
    data['house_locality'] = this.houseLocality;
    data['pincode'] = this.pincode;
    data['name'] = this.name;
    data['contact_no'] = this.contactNo;
    data['land_mark'] = this.landMark;
    data['address_type'] = this.addressType;
    data['auth_key'] = this.authKey;
    data['city_name'] = this.cityName;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
