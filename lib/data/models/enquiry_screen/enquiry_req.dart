class EnquiryReq {
  String? customerId;
  String? customerMobile;
  String? customerName;
  String? customerMesage;
  String? customerMsCategory;
  String? authKey;

  EnquiryReq(
      {this.customerId,
      this.customerMobile,
      this.customerName,
      this.customerMesage,
      this.customerMsCategory,
      this.authKey});

  EnquiryReq.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    customerMobile = json['customer_mobile'];
    customerName = json['customer_name'];
    customerMesage = json['customer_mesage'];
    customerMsCategory = json['customer_ms_category'];
    authKey = json['auth_key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['customer_mobile'] = this.customerMobile;
    data['customer_name'] = this.customerName;
    data['customer_mesage'] = this.customerMesage;
    data['customer_ms_category'] = this.customerMsCategory;
    data['auth_key'] = this.authKey;
    return data;
  }
}
