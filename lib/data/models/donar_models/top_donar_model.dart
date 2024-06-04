class TopDonarModel {
  bool? status;
  String? msg;
  List<TopDonar>? response;

  TopDonarModel({this.status, this.msg, this.response});

  TopDonarModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['response'] != null) {
      response = <TopDonar>[];
      json['response'].forEach((v) {
        response!.add(TopDonar.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['msg'] = msg;
    if (response != null) {
      data['response'] = response!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TopDonar {
  int? id;
  int? totalDonations;
  String? name;
  String? email;
  String? mobile;
  bool? isVerified;
  String? createdDate;
  String? updatedDate;
  String? profileImage;
  String? bio;

  TopDonar(
      {this.id,
      this.totalDonations,
      this.name,
      this.email,
      this.mobile,
      this.isVerified,
      this.createdDate,
      this.updatedDate,
      this.profileImage,
      this.bio});

  TopDonar.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    totalDonations = json['total_donations'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    isVerified = json['isVerified'];
    createdDate = json['created_date'];
    updatedDate = json['updated_date'];
    profileImage = json['profile_image'];
    bio = json['bio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['total_donations'] = totalDonations;
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    data['isVerified'] = isVerified;
    data['created_date'] = createdDate;
    data['updated_date'] = updatedDate;
    data['profile_image'] = profileImage;
    data['bio'] = bio;
    return data;
  }
}
