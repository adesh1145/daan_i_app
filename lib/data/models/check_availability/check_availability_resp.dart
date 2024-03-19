class CheckAvailabilityResp {
  String? result;
  String? status;
  String? message;
  List<HospitalData>? jSONData;

  CheckAvailabilityResp(
      {this.result, this.status, this.message, this.jSONData});

  CheckAvailabilityResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    if (json['JSONData'] != null) {
      jSONData = <HospitalData>[];
      json['JSONData'].forEach((v) {
        jSONData!.add(new HospitalData.fromJson(v));
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

class HospitalData {
  int? serviceId;
  String? hospitalId;
  String? serviceStatus;
  String? availableQt;
  String? hospitalName;
  String? hospitalContactNo;
  String? hospitalLogo;
  String? hospitalAddress;
  String? hospitalLat;
  String? hospitalLong;
  String? hospitalServCatName;
  String? hospitalServCatIcon;
  String? favStatus;
  String? favStatusText;
  String? distance;
  String? qtUnit;

  HospitalData(
      {this.serviceId,
        this.hospitalId,
        this.serviceStatus,
        this.availableQt,
        this.hospitalName,
        this.hospitalContactNo,
        this.hospitalLogo,
        this.hospitalAddress,
        this.hospitalLat,
        this.hospitalLong,
        this.hospitalServCatName,
        this.hospitalServCatIcon,
        this.favStatus,
        this.favStatusText,
        this.distance,
        this.qtUnit});

  HospitalData.fromJson(Map<String, dynamic> json) {
    serviceId = json['service_id'];
    hospitalId = json['hospital_id'];
    serviceStatus = json['service_status'];
    availableQt = json['available_qt'];
    hospitalName = json['hospital_name'];
    hospitalContactNo = json['hospital_contact_no'];
    hospitalLogo = json['hospital_logo'];
    hospitalAddress = json['hospital_address'];
    hospitalLat = json['hospital_lat'];
    hospitalLong = json['hospital_long'];
    hospitalServCatName = json['hospital_serv_cat_name'];
    hospitalServCatIcon = json['hospital_serv_cat_icon'];
    favStatus = json['fav_status'];
    favStatusText = json['fav_status_text'];
    distance = json['distance'];
    qtUnit = json['qt_unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['service_id'] = this.serviceId;
    data['hospital_id'] = this.hospitalId;
    data['service_status'] = this.serviceStatus;
    data['available_qt'] = this.availableQt;
    data['hospital_name'] = this.hospitalName;
    data['hospital_contact_no'] = this.hospitalContactNo;
    data['hospital_logo'] = this.hospitalLogo;
    data['hospital_address'] = this.hospitalAddress;
    data['hospital_lat'] = this.hospitalLat;
    data['hospital_long'] = this.hospitalLong;
    data['hospital_serv_cat_name'] = this.hospitalServCatName;
    data['hospital_serv_cat_icon'] = this.hospitalServCatIcon;
    data['fav_status'] = this.favStatus;
    data['fav_status_text'] = this.favStatusText;
    data['distance'] = this.distance;
    data['qt_unit'] = this.qtUnit;
    return data;
  }
}
