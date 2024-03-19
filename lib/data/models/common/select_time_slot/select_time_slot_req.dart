class SelectTimeSlotReq {
  String? userId;
  String? slotId;
  String? cityName;
  String? selectedDate;
  String? auth;

  SelectTimeSlotReq(
      {this.userId, this.slotId, this.cityName, this.selectedDate, this.auth});

  SelectTimeSlotReq.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    slotId = json['slot_id'];
    cityName = json['cityName'];
    selectedDate = json['selected_date'];
    auth = json['auth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['slot_id'] = this.slotId;
    data['cityName'] = this.cityName;
    data['selected_date'] = this.selectedDate;
    data['auth'] = this.auth;
    return data;
  }
}
