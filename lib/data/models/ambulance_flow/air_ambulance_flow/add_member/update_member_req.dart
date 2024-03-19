class UpdateMemberDeailReq {
  String? attendentId;
  String? bookingId;
  String? consumerId;
  String? name;
  String? aadharNo;
  String? aadharFrontImage;
  String? aadharBackImage;
  String? covidReportImage;
  String? authKey;

  UpdateMemberDeailReq(
      {this.attendentId,
      this.bookingId,
      this.consumerId,
      this.name,
      this.aadharNo,
      this.aadharFrontImage,
      this.aadharBackImage,
      this.covidReportImage,
      this.authKey});

  UpdateMemberDeailReq.fromJson(Map<String, dynamic> json) {
    attendentId = json['attendent_id'];
    bookingId = json['booking_id'];
    consumerId = json['consumer_id'];
    name = json['name'];
    aadharNo = json['aadhar_no'];
    aadharFrontImage = json['aadhar_front_image'];
    aadharBackImage = json['aadhar_back_image'];
    covidReportImage = json['covid_report_image'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attendent_id'] = this.attendentId;
    data['booking_id'] = this.bookingId;
    data['consumer_id'] = this.consumerId;
    data['name'] = this.name;
    data['aadhar_no'] = this.aadharNo;
    data['aadhar_front_image'] = this.aadharFrontImage;
    data['aadhar_back_image'] = this.aadharBackImage;
    data['covid_report_image'] = this.covidReportImage;
    data['auth_key'] = this.authKey;
    return data;
  }
}
