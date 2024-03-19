
class RegistrationReq {
  String? consumerId;
  String? firstName;
  String? lastName;
  String? emailId;
  String? referralCode;
  String? authKey;

  RegistrationReq(
      {this.consumerId,
      this.firstName,
      this.lastName,
      this.emailId,
      this.referralCode,
      this.authKey});

  RegistrationReq.fromJson(Map<String, dynamic> json) {
    consumerId = json['consumer_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    emailId = json['email_id'];
    referralCode = json['referral_code'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['consumer_id'] = this.consumerId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email_id'] = this.emailId;
    data['referral_code'] = this.referralCode;
    data['auth_key'] = this.authKey;
    return data;
  }
}
