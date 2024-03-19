class LabBookingHistoryResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  LabBookingHistoryResp(
      {this.result, this.status, this.message, this.jSONData});

  LabBookingHistoryResp.fromJson(Map<String, dynamic> json) {
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
  String? sampleCollectionStatus;
  String? sampleCollectionStatusTxt;
  String? slotSelectedDate;
  String? slotFrom;
  String? slotTo;
  String? labOrderId;
  String? totalPatients;
  String? totalTest;
  String? bookingStatus;
  String? paymentStatus;
  String? paymentStatusTxt;
  String? address;
  String? addressPincode;
  String? fullAddress;
  String? advanceAmount;
  String? finalAmount;
  String? currencySymbol;

  JSONData(
      {this.sampleCollectionStatus,
      this.sampleCollectionStatusTxt,
      this.slotSelectedDate,
      this.slotFrom,
      this.slotTo,
      this.labOrderId,
      this.totalPatients,
      this.totalTest,
      this.bookingStatus,
      this.paymentStatus,
      this.paymentStatusTxt,
      this.address,
      this.addressPincode,
      this.fullAddress,
      this.advanceAmount,
      this.finalAmount,
      this.currencySymbol});

  JSONData.fromJson(Map<String, dynamic> json) {
    sampleCollectionStatus = json['sample_collection_status'];
    sampleCollectionStatusTxt = json['sample_collection_status_txt'];
    slotSelectedDate = json['slot_selected_date'];
    slotFrom = json['slot_from'];
    slotTo = json['slot_to'];
    labOrderId = json['lab_order_id'];
    totalPatients = json['total_patients'];
    totalTest = json['total_test'];
    bookingStatus = json['booking_status'];
    paymentStatus = json['payment_status'];
    paymentStatusTxt = json['payment_status_txt'];
    address = json['address'];
    addressPincode = json['address_pincode'];
    fullAddress = json['full_address'];
    advanceAmount = json['advance_amount'];
    finalAmount = json['final_amount'];
    currencySymbol = json['currencySymbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sample_collection_status'] = this.sampleCollectionStatus;
    data['sample_collection_status_txt'] = this.sampleCollectionStatusTxt;
    data['slot_selected_date'] = this.slotSelectedDate;
    data['slot_from'] = this.slotFrom;
    data['slot_to'] = this.slotTo;
    data['lab_order_id'] = this.labOrderId;
    data['total_patients'] = this.totalPatients;
    data['total_test'] = this.totalTest;
    data['booking_status'] = this.bookingStatus;
    data['payment_status'] = this.paymentStatus;
    data['payment_status_txt'] = this.paymentStatusTxt;
    data['address'] = this.address;
    data['address_pincode'] = this.addressPincode;
    data['full_address'] = this.fullAddress;
    data['advance_amount'] = this.advanceAmount;
    data['final_amount'] = this.finalAmount;
    data['currencySymbol'] = this.currencySymbol;
    return data;
  }
}
