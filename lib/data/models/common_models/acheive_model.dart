class AcheiveModel {
  bool? status;
  String? msg;
  List<AcheiveResponse>? response;

  AcheiveModel({this.status, this.msg, this.response});

  AcheiveModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['response'] != null) {
      response = <AcheiveResponse>[];
      json['response'].forEach((v) {
        response!.add(AcheiveResponse.fromJson(v));
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

class AcheiveResponse {
  int? count;
  String? text;
  int? ngoCount;
  int? donarCount;

  AcheiveResponse({this.count, this.text, this.ngoCount, this.donarCount});

  AcheiveResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['donationCount'] = count;
    data['text'] = text;

    return data;
  }
}
