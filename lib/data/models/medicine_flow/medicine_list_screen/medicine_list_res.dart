class MedicineListScreenResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MedicineListScreenResp(
      {this.result, this.status, this.message, this.jSONData});

  MedicineListScreenResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['Message'];
    jSONData = json['JSONData'] != null
        ? new JSONData.fromJson(json['JSONData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['Message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.toJson();
    }
    return data;
  }
}

class JSONData {
  List<CardDetails>? cardDetails;
  List<ProductList>? productList;
  List<FilterList>? filterList;
  List<String>? sortList;
  String? sortingBy;

  JSONData({this.productList, this.filterList, this.sortList, this.sortingBy});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['cardDetails'] != null) {
      cardDetails = <CardDetails>[];
      json['cardDetails'].forEach((v) {
        cardDetails!.add(new CardDetails.fromJson(v));
      });
    }
    if (json['productList'] != null) {
      productList = <ProductList>[];
      json['productList'].forEach((v) {
        productList!.add(new ProductList.fromJson(v));
      });
    }
    if (json['filterList'] != null) {
      filterList = <FilterList>[];
      json['filterList'].forEach((v) {
        filterList!.add(new FilterList.fromJson(v));
      });
    }
    sortList = json['sortList'].cast<String>();
    sortingBy = json['sortingBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cardDetails != null) {
      data['cardDetails'] = this.cardDetails!.map((v) => v.toJson()).toList();
    }
    if (this.productList != null) {
      data['productList'] = this.productList!.map((v) => v.toJson()).toList();
    }
    if (this.filterList != null) {
      data['filterList'] = this.filterList!.map((v) => v.toJson()).toList();
    }
    data['sortList'] = this.sortList;
    data['sortingBy'] = this.sortingBy;
    return data;
  }
}

class CardDetails {
  int? productCount;
  double? totalActualPrice;
  double? totalOfferedPrice;
  double? totalDiscountPrice;
  String? prescriptionFlag;

  CardDetails(
      {this.productCount,
      this.totalActualPrice,
      this.totalOfferedPrice,
      this.totalDiscountPrice,
      this.prescriptionFlag});

  CardDetails.fromJson(Map<String, dynamic> json) {
    productCount = json['productCount'];
    totalActualPrice = double.tryParse(json['totalActualPrice'].toString());
    totalOfferedPrice = double.tryParse(json['totalOfferedPrice'].toString());
    totalDiscountPrice = double.tryParse(json['totalDiscountPrice'].toString());
    prescriptionFlag = json['prescriptionFlag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productCount'] = this.productCount;
    data['totalActualPrice'] = this.totalActualPrice;
    data['totalOfferedPrice'] = this.totalOfferedPrice;
    data['totalDiscountPrice'] = this.totalDiscountPrice;
    data['prescriptionFlag'] = this.prescriptionFlag;
    return data;
  }
}

class ProductList {
  int? medicineId;
  int? priceId;
  String? medicineName;
  String? stockAvailability;
  String? image;
  double? actualPrice;
  double? offerPrice;
  double? discountPercentage;
  int? quantityVarient;
  String? measurement;
  String? type;
  int? addedToCart;
  double? rating;
  int? count;
  int? countOfRating;
  String? brandName;
  int? brandId;

  ProductList(
      {this.medicineId,
      this.priceId,
      this.medicineName,
      this.stockAvailability,
      this.image,
      this.actualPrice,
      this.offerPrice,
      this.discountPercentage,
      this.quantityVarient,
      this.measurement,
      this.type,
      this.addedToCart,
      this.rating,
      this.count,
      this.countOfRating,
      this.brandName,
      this.brandId});

  ProductList.fromJson(Map<String, dynamic> json) {
    medicineId = json['medicineId'];
    priceId = json['priceId'];
    medicineName = json['medicineName'];
    stockAvailability = json['stockAvailability'];
    image = json['image'];
    actualPrice = double.tryParse(json['actualPrice'].toString());
    offerPrice = double.tryParse(json['offerPrice'].toString());
    discountPercentage = double.tryParse(json['discountPercentage'].toString());
    quantityVarient = json['QuantityVarient'];
    measurement = json['measurement'];
    type = json['type'];
    addedToCart = json['addedToCart'];
    rating = double.tryParse(json['rating'].toString());
    count = json['count'];
    countOfRating = json['countOfRating'];
    brandName = json['brandName'];
    brandId = json['brandId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['medicineId'] = this.medicineId;
    data['priceId'] = this.priceId;
    data['medicineName'] = this.medicineName;
    data['stockAvailability'] = this.stockAvailability;
    data['image'] = this.image;
    data['actualPrice'] = this.actualPrice;
    data['offerPrice'] = this.offerPrice;
    data['discountPercentage'] = this.discountPercentage;
    data['QuantityVarient'] = this.quantityVarient;
    data['measurement'] = this.measurement;
    data['type'] = this.type;
    data['addedToCart'] = this.addedToCart;
    data['rating'] = this.rating;
    data['count'] = this.count;
    data['countOfRating'] = this.countOfRating;
    data['brandName'] = this.brandName;
    data['brandId'] = this.brandId;
    return data;
  }
}

class FilterList {
  String? title;
  String? multipleSelection;
  String? multipleSelectionDevTxt;
  List<ListData>? listData;

  FilterList(
      {this.title,
      this.multipleSelection,
      this.multipleSelectionDevTxt,
      this.listData});

  FilterList.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    multipleSelection = json['multipleSelection'];
    multipleSelectionDevTxt = json['multipleSelection_dev_txt'];
    if (json['listData'] != null) {
      listData = <ListData>[];
      json['listData'].forEach((v) {
        listData!.add(new ListData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['multipleSelection'] = this.multipleSelection;
    data['multipleSelection_dev_txt'] = this.multipleSelectionDevTxt;
    if (this.listData != null) {
      data['listData'] = this.listData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListData {
  String? lable;
  String? id;
  String? value;
  String? devText;

  ListData({this.lable, this.id, this.value, this.devText});

  ListData.fromJson(Map<String, dynamic> json) {
    lable = json['lable'];
    print(json['value']);
    id = json['id'].toString();
    value = json['value'];
    devText = json['devText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lable'] = this.lable;
    data['id'] = this.id;
    data['value'] = this.value;
    data['devText'] = this.devText;
    return data;
  }
}
