class AddPatientReq {
  String? bookingId;
  String? consumerId;
  String? name;
  String? mobileNo;
  String? gender;
  String? aadharNo;
  String? aadharFrontImage;
  String? aadharBackImage;
  String? panNo;
  String? panImage;
  String? gstNo;
  String? dischargeDoc;
  String? ext;
  String? authKey;

  AddPatientReq(
      {this.bookingId,
      this.consumerId,
      this.name,
      this.mobileNo,
      this.gender,
      this.aadharNo,
      this.aadharFrontImage,
      this.aadharBackImage,
      this.panNo,
      this.panImage,
      this.gstNo,
      this.dischargeDoc,
      this.ext,
      this.authKey});

  AddPatientReq.fromJson(Map<String, dynamic> json) {
    bookingId = json['booking_id'];
    consumerId = json['consumer_id'];
    name = json['name'];
    mobileNo = json['mobile_no'];
    gender = json['gender'];
    aadharNo = json['aadhar_no'];
    aadharFrontImage = json['aadhar_front_image'];
    aadharBackImage = json['aadhar_back_image'];
    panNo = json['pan_no'];
    panImage = json['pan_image'];
    gstNo = json['gst_no'];
    dischargeDoc = json['discharge_doc'];
    ext = json['ext'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['booking_id'] = this.bookingId;
    data['consumer_id'] = this.consumerId;
    data['name'] = this.name;
    data['mobile_no'] = this.mobileNo;
    data['gender'] = this.gender;
    data['aadhar_no'] = this.aadharNo;
    data['aadhar_front_image'] = this.aadharFrontImage;
    data['aadhar_back_image'] = this.aadharBackImage;
    data['pan_no'] = this.panNo;
    data['pan_image'] = this.panImage;
    data['gst_no'] = this.gstNo;
    data['discharge_doc'] = this.dischargeDoc;
    data['ext'] = this.ext;
    data['auth_key'] = this.authKey;
    return data;
  }
}
