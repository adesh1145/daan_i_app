class HealthCardAddSubscriptionRes {
  String? s0;
  String? result;
  String? message;
  List<HealthCardAddSubscriptionData>? jSONData;

  HealthCardAddSubscriptionRes(
      {this.s0, this.result, this.message, this.jSONData});

  HealthCardAddSubscriptionRes.fromJson(Map<String, dynamic> json) {
    s0 = json['0'];
    result = json['result'];
    message = json['Message'];
    if (json['JSONData'] != null) {
      jSONData = <HealthCardAddSubscriptionData>[];
      json['JSONData'].forEach((v) {
        jSONData!.add(new HealthCardAddSubscriptionData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['0'] = this.s0;
    data['result'] = this.result;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HealthCardAddSubscriptionData {
  String? msg;
  String? status;
  String? subId;

  HealthCardAddSubscriptionData({this.msg, this.status, this.subId});

  HealthCardAddSubscriptionData.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    status = json['status'];
    subId = json['sub_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['status'] = this.status;
    data['sub_id'] = this.subId;
    return data;
  }
}
