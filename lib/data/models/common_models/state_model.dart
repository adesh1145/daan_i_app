class StateModel {
  bool? status;
  String? msg;
  List<Respons>? response;

  StateModel({this.status, this.msg, this.response});

  StateModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['response'] != null) {
      response = <Respons>[];
      json['response'].forEach((v) {
        response!.add(Respons.fromJson(v));
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

class Respons {
  int? id;
  String? name;

  Respons({this.id, this.name});

  Respons.fromJson(Map<String, dynamic> json) {
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
