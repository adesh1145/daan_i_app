class DeleteLabCartScreenReq {
  String? userId;
  String? testId;
  String? cityName;
  String? auth;

  DeleteLabCartScreenReq({this.userId, this.testId, this.cityName, this.auth});

  DeleteLabCartScreenReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    testId = json['test_id'];
    cityName = json['cityName'];
    auth = json['auth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['test_id'] = this.testId;
    data['cityName'] = this.cityName;
    data['auth'] = this.auth;
    return data;
  }
}
