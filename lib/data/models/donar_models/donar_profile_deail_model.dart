class DonarProfileDetailModel {
  bool? status;
  String? msg;
  Respons? response;

  DonarProfileDetailModel({this.status, this.msg, this.response});

  DonarProfileDetailModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    response = json['response'] != null
        ? new Respons.fromJson(json['response'])
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

class Respons {
  String? name;
  String? email;
  String? mobile;
  String? profileImage;
  String? bio;

  Respons({this.name, this.email, this.mobile, this.profileImage, this.bio});

  Respons.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    profileImage = json['profile_image'];
    bio = json['bio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['profile_image'] = this.profileImage;
    data['bio'] = this.bio;
    return data;
  }
}
