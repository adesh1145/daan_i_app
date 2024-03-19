class MedicineCartScreenResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MedicineCartScreenResp(
      {this.result, this.status, this.message, this.jSONData});

  MedicineCartScreenResp.fromJson(Map<String, dynamic> json) {
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
  List<ProductDetails>? productDetails;
  List<FrequentBought>? frequentBought;
  List<CustomerAlsoPurchase>? customerAlsoPurchase;
  List<CartData>? cartData;
  String? addressDetails;
  JSONData(
      {this.productDetails,
      this.frequentBought,
      this.customerAlsoPurchase,
      this.cartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    addressDetails = json['AddressDetails'];
    if (json['productDetails'] != null) {
      productDetails = <ProductDetails>[];
      json['productDetails'].forEach((v) {
        productDetails!.add(new ProductDetails.fromJson(v));
      });
    }
    if (json['frequentBought'] != null) {
      frequentBought = <FrequentBought>[];
      json['frequentBought'].forEach((v) {
        frequentBought!.add(new FrequentBought.fromJson(v));
      });
    }
    if (json['customerAlsoPurchase'] != null) {
      customerAlsoPurchase = <CustomerAlsoPurchase>[];
      json['customerAlsoPurchase'].forEach((v) {
        customerAlsoPurchase!.add(new CustomerAlsoPurchase.fromJson(v));
      });
    }
    if (json['CartData'] != null) {
      cartData = <CartData>[];
      json['CartData'].forEach((v) {
        cartData!.add(new CartData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['AddressDetails'] = this.addressDetails;
    if (this.productDetails != null) {
      data['productDetails'] =
          this.productDetails!.map((v) => v.toJson()).toList();
    }
    if (this.frequentBought != null) {
      data['frequentBought'] =
          this.frequentBought!.map((v) => v.toJson()).toList();
    }
    if (this.customerAlsoPurchase != null) {
      data['customerAlsoPurchase'] =
          this.customerAlsoPurchase!.map((v) => v.toJson()).toList();
    }
    if (this.cartData != null) {
      data['CartData'] = this.cartData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductDetails {
  int? medicineId;
  int? priceId;
  String? typeValues;
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

  ProductDetails(
      {this.medicineId,
      this.priceId,
      this.typeValues,
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
      this.countOfRating});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    medicineId = json['medicineId'];
    priceId = json['priceId'];
    typeValues = json['TypeValues'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['medicineId'] = this.medicineId;
    data['priceId'] = this.priceId;
    data['TypeValues'] = this.typeValues;
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
    return data;
  }
}

class FrequentBought {
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
  int? count;
  double? rating;
  int? countOfRating;
  String? brandName;
  int? brandId;

  FrequentBought(
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
      this.count,
      this.rating,
      this.countOfRating,
      this.brandName,
      this.brandId});

  FrequentBought.fromJson(Map<String, dynamic> json) {
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
    count = json['count'];
    rating = double.tryParse(json['rating'].toString());
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
    data['count'] = this.count;
    data['rating'] = this.rating;
    data['countOfRating'] = this.countOfRating;
    data['brandName'] = this.brandName;
    data['brandId'] = this.brandId;
    return data;
  }
}

class CustomerAlsoPurchase {
  int? medicineId;
  int? priceId;
  String? typeValues;
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

  CustomerAlsoPurchase(
      {this.medicineId,
      this.priceId,
      this.typeValues,
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

  CustomerAlsoPurchase.fromJson(Map<String, dynamic> json) {
    medicineId = json['medicineId'];
    priceId = json['priceId'];
    typeValues = json['TypeValues'];
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
    data['TypeValues'] = this.typeValues;
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

class CartData {
  int? productCount;
  String? totalOfferedPrice;
  String? totalActualPrice;
  String? totalDiscountPrice;
  List<CouponData>? couponData;
  String? couponDiscount;
  String? healthCardDiscount;
  String? healthCardCharge;
  String? gstPercentage;
  String? getAmount;
  String? netPayableAmount;

  CartData(
      {this.productCount,
      this.totalOfferedPrice,
      this.totalActualPrice,
      this.totalDiscountPrice,
      this.couponData,
      this.couponDiscount,
      this.healthCardDiscount,
      this.healthCardCharge,
      this.gstPercentage,
      this.getAmount,
      this.netPayableAmount});

  CartData.fromJson(Map<String, dynamic> json) {
    productCount = json['productCount'];
    totalOfferedPrice = json['totalOfferedPrice'];
    totalActualPrice = json['totalActualPrice'];
    totalDiscountPrice = json['totalDiscountPrice'];
    if (json['couponData'] != null) {
      couponData = <CouponData>[];
      json['couponData'].forEach((v) {
        couponData!.add(new CouponData.fromJson(v));
      });
    }
    couponDiscount = json['couponDiscount'];
    healthCardDiscount = json['healthCardDiscount'];
    healthCardCharge = json['healthCardCharge'];
    gstPercentage = json['gstPercentage'];
    getAmount = json['getAmount'];
    netPayableAmount = json['NetPayableAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productCount'] = this.productCount;
    data['totalOfferedPrice'] = this.totalOfferedPrice;
    data['totalActualPrice'] = this.totalActualPrice;
    data['totalDiscountPrice'] = this.totalDiscountPrice;
    if (this.couponData != null) {
      data['couponData'] = this.couponData!.map((v) => v.toJson()).toList();
    }
    data['couponDiscount'] = this.couponDiscount;
    data['healthCardDiscount'] = this.healthCardDiscount;
    data['healthCardCharge'] = this.healthCardCharge;
    data['gstPercentage'] = this.gstPercentage;
    data['getAmount'] = this.getAmount;
    data['NetPayableAmount'] = this.netPayableAmount;
    return data;
  }
}

class CouponData {
  int? couponId;
  String? couponCode;
  String? description;
  double? minimunCartValue;
  double? maximumDiscountValue;
  String? percentageDiscount;
  String? fixedAmountDiscount;

  CouponData(
      {this.couponId,
      this.couponCode,
      this.description,
      this.minimunCartValue,
      this.maximumDiscountValue,
      this.percentageDiscount,
      this.fixedAmountDiscount});

  CouponData.fromJson(Map<String, dynamic> json) {
    couponId = json['couponId'];
    couponCode = json['couponCode'];
    description = json['description'];
    minimunCartValue = double.tryParse(json['minimunCartValue'].toString());
    maximumDiscountValue =
        double.tryParse(json['maximumDiscountValue'].toString());
    percentageDiscount = json['percentageDiscount'];
    fixedAmountDiscount = json['fixedAmountDiscount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['couponId'] = this.couponId;
    data['couponCode'] = this.couponCode;
    data['description'] = this.description;
    data['minimunCartValue'] = this.minimunCartValue;
    data['maximumDiscountValue'] = this.maximumDiscountValue;
    data['percentageDiscount'] = this.percentageDiscount;
    data['fixedAmountDiscount'] = this.fixedAmountDiscount;
    return data;
  }
}
