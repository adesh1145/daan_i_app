class CityModel {
  bool? status;
  String? msg;
  List<CityResponse>? response;

  CityModel({this.status, this.msg, this.response});

  CityModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['response'] != null) {
      response = <CityResponse>[];
      json['response'].forEach((v) {
        response!.add(CityResponse.fromJson(v));
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

class CityResponse {
  int? id;
  String? name;
  State? state;

  CityResponse({this.id, this.name, this.state});

  CityResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    state = json['state'] != null ? State.fromJson(json['state']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (state != null) {
      data['state'] = state!.toJson();
    }
    return data;
  }
}

class State {
  int? id;
  String? name;

  State({this.id, this.name});

  State.fromJson(Map<String, dynamic> json) {
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
