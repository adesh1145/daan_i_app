class RemoveCartReq {
  String? userId;
  String? testId;
  String? auth;

  RemoveCartReq({this.userId, this.testId, this.auth});

  RemoveCartReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    testId = json['test_id'];
    auth = json['auth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['test_id'] = this.testId;
    data['auth'] = this.auth;
    return data;
  }
}
