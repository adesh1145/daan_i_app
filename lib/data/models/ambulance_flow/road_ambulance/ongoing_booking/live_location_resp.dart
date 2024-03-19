class LiveLocationResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  LiveLocationResp({this.result, this.status, this.message, this.jSONData});

  LiveLocationResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    if (json['JSONData'] != null) {
      jSONData = <JSONData>[];
      json['JSONData'].forEach((v) {
        jSONData!.add(new JSONData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  List<LiveLocation>? liveLocation;
  String? msg;

  JSONData({this.liveLocation, this.msg});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['live_location'] != null) {
      liveLocation = <LiveLocation>[];
      json['live_location'].forEach((v) {
        liveLocation!.add(new LiveLocation.fromJson(v));
      });
    }
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.liveLocation != null) {
      data['live_location'] =
          this.liveLocation!.map((v) => v.toJson()).toList();
    }
    data['msg'] = this.msg;
    return data;
  }
}

class LiveLocation {
  String? locationLat;
  String? locationLong;
  String? updateTime;

  LiveLocation({this.locationLat, this.locationLong, this.updateTime});

  LiveLocation.fromJson(Map<String, dynamic> json) {
    locationLat = json['location_lat'];
    locationLong = json['location_long'];
    updateTime = json['update_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['location_lat'] = this.locationLat;
    data['location_long'] = this.locationLong;
    data['update_time'] = this.updateTime;
    return data;
  }
}
