class BannerModel {
  bool? status;
  String? msg;
  List<Respons>? response;

  BannerModel({this.status, this.msg, this.response});

  BannerModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['response'] != null) {
      response = <Respons>[];
      json['response'].forEach((v) {
        response!.add(new Respons.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.response != null) {
      data['response'] = this.response!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Respons {
  int? id;
  String? image;

  Respons({this.id, this.image});

  Respons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    return data;
  }
}
