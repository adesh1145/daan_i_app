class AddMemberResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  AddMemberResp({this.result, this.status, this.message, this.jSONData});

  AddMemberResp.fromJson(Map<String, dynamic> json) {
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
  List<AllAttendents>? allAttendents;

  JSONData({this.allAttendents});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['all_attendents'] != null) {
      allAttendents = <AllAttendents>[];
      json['all_attendents'].forEach((v) {
        allAttendents!.add(new AllAttendents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.allAttendents != null) {
      data['all_attendents'] =
          this.allAttendents!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllAttendents {
  int? attendentId;
  String? attendentBid;
  String? attendentByCid;
  String? attendentName;
  String? attendentAadharNo;
  String? attendentAadharBackImage;
  String? attendentAadharFrontImage;
  String? attendentCovidReportImage;

  AllAttendents(
      {this.attendentId,
      this.attendentBid,
      this.attendentByCid,
      this.attendentName,
      this.attendentAadharNo,
      this.attendentAadharBackImage,
      this.attendentAadharFrontImage,
      this.attendentCovidReportImage});

  AllAttendents.fromJson(Map<String, dynamic> json) {
    attendentId = json['attendent_id'];
    attendentBid = json['attendent_bid'];
    attendentByCid = json['attendent_by_cid'];
    attendentName = json['attendent_name'];
    attendentAadharNo = json['attendent_aadhar_no'];
    attendentAadharBackImage = json['attendent_aadhar_back_image'];
    attendentAadharFrontImage = json['attendent_aadhar_front_image'];
    attendentCovidReportImage = json['attendent_covid_report_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attendent_id'] = this.attendentId;
    data['attendent_bid'] = this.attendentBid;
    data['attendent_by_cid'] = this.attendentByCid;
    data['attendent_name'] = this.attendentName;
    data['attendent_aadhar_no'] = this.attendentAadharNo;
    data['attendent_aadhar_back_image'] = this.attendentAadharBackImage;
    data['attendent_aadhar_front_image'] = this.attendentAadharFrontImage;
    data['attendent_covid_report_image'] = this.attendentCovidReportImage;
    return data;
  }
}
