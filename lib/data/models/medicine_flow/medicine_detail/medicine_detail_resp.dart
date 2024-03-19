class MedicineDetailResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MedicineDetailResp({this.result, this.status, this.message, this.jSONData});

  MedicineDetailResp.fromJson(Map<String, dynamic> json) {
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
  List<Description>? description;
  List<BrandDescription>? brandDescription;
  String? deliveryTime;
  List<Ingredients>? ingredients;
  List<PriceList>? priceList;
  List<ReviewList>? reviewList;
  List<SlideList1>? slideList1;
  List<SlideList2>? slideList2;
  List<BannerImage>? bannerImage;
  List<SimilarProduct>? similarProduct;
  List<FrequentBought>? frequentBought;
  List<CustomerAlsoPurchase>? customerAlsoPurchase;
  List<CardDetails>? cardDetails;

  JSONData(
      {this.description,
      this.brandDescription,
      this.deliveryTime,
      this.ingredients,
      this.priceList,
      this.reviewList,
      this.slideList1,
      this.slideList2,
      this.bannerImage,
      this.similarProduct,
      this.frequentBought,
      this.customerAlsoPurchase,
      this.cardDetails});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['Description'] != null) {
      description = <Description>[];
      json['Description'].forEach((v) {
        description!.add(new Description.fromJson(v));
      });
    }
    if (json['BrandDescription'] != null) {
      brandDescription = <BrandDescription>[];
      json['BrandDescription'].forEach((v) {
        brandDescription!.add(new BrandDescription.fromJson(v));
      });
    }
    deliveryTime = json['deliveryTime'];
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(new Ingredients.fromJson(v));
      });
    }
    if (json['priceList'] != null) {
      priceList = <PriceList>[];
      json['priceList'].forEach((v) {
        priceList!.add(new PriceList.fromJson(v));
      });
    }
    if (json['ReviewList'] != null) {
      reviewList = <ReviewList>[];
      json['ReviewList'].forEach((v) {
        reviewList!.add(new ReviewList.fromJson(v));
      });
    }
    if (json['slideList1'] != null) {
      slideList1 = <SlideList1>[];
      json['slideList1'].forEach((v) {
        slideList1!.add(new SlideList1.fromJson(v));
      });
    }
    if (json['slideList2'] != null) {
      slideList2 = <SlideList2>[];
      json['slideList2'].forEach((v) {
        slideList2!.add(new SlideList2.fromJson(v));
      });
    }
    if (json['bannerImage'] != null) {
      bannerImage = <BannerImage>[];
      json['bannerImage'].forEach((v) {
        bannerImage!.add(new BannerImage.fromJson(v));
      });
    }
    if (json['similarProduct'] != null) {
      similarProduct = <SimilarProduct>[];
      json['similarProduct'].forEach((v) {
        similarProduct!.add(new SimilarProduct.fromJson(v));
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
    if (json['cardDetails'] != null) {
      cardDetails = <CardDetails>[];
      json['cardDetails'].forEach((v) {
        cardDetails!.add(new CardDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.description != null) {
      data['Description'] = this.description!.map((v) => v.toJson()).toList();
    }
    if (this.brandDescription != null) {
      data['BrandDescription'] =
          this.brandDescription!.map((v) => v.toJson()).toList();
    }
    data['deliveryTime'] = this.deliveryTime;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients!.map((v) => v.toJson()).toList();
    }
    if (this.priceList != null) {
      data['priceList'] = this.priceList!.map((v) => v.toJson()).toList();
    }
    if (this.reviewList != null) {
      data['ReviewList'] = this.reviewList!.map((v) => v.toJson()).toList();
    }
    if (this.slideList1 != null) {
      data['slideList1'] = this.slideList1!.map((v) => v.toJson()).toList();
    }
    if (this.slideList2 != null) {
      data['slideList2'] = this.slideList2!.map((v) => v.toJson()).toList();
    }
    if (this.bannerImage != null) {
      data['bannerImage'] = this.bannerImage!.map((v) => v.toJson()).toList();
    }
    if (this.similarProduct != null) {
      data['similarProduct'] =
          this.similarProduct!.map((v) => v.toJson()).toList();
    }
    if (this.frequentBought != null) {
      data['frequentBought'] =
          this.frequentBought!.map((v) => v.toJson()).toList();
    }
    if (this.customerAlsoPurchase != null) {
      data['customerAlsoPurchase'] =
          this.customerAlsoPurchase!.map((v) => v.toJson()).toList();
    }
    if (this.cardDetails != null) {
      data['cardDetails'] = this.cardDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Description {
  int? medicineId;
  String? medicineName;
  String? typeValues;
  String? image;
  String? image2;
  String? image3;
  String? expireTime;
  String? productInformation;
  String? productUses;
  String? sideEffects;
  String? howToUse;
  String? safetyInstruction;
  String? stockAvailability;
  double? actualPrice;
  double? offerPrice;
  double? discountPercentage;
  int? quantityVarient;
  String? measurement;
  String? type;
  int? addedToCart;
  int? count;
  double? rating;
  double? totalRatingValue;
  int? countOfRating;
  int? maximumRatingValue;
  String? rating1;
  String? rating2;
  String? rating3;
  String? rating4;
  String? rating5;
  int? priceId;
  String? OtherInformation;

  Description(
      {this.medicineId,
      this.medicineName,
      this.typeValues,
      this.image,
      this.image2,
      this.image3,
      this.expireTime,
      this.productInformation,
      this.productUses,
      this.sideEffects,
      this.howToUse,
      this.safetyInstruction,
      this.stockAvailability,
      this.actualPrice,
      this.offerPrice,
      this.discountPercentage,
      this.quantityVarient,
      this.measurement,
      this.type,
      this.addedToCart,
      this.count,
      this.rating,
      this.totalRatingValue,
      this.countOfRating,
      this.maximumRatingValue,
      this.rating1,
      this.rating2,
      this.rating3,
      this.rating4,
      this.rating5,
      this.priceId,
      this.OtherInformation});

  Description.fromJson(Map<String, dynamic> json) {
    medicineId = json['medicineId'];
    medicineName = json['medicineName'];
    typeValues = json['TypeValues'];
    image = json['image'];
    image2 = json['image2'];
    image3 = json['image3'];
    expireTime = json['expireTime'];
    productInformation = json['productInformation'];
    productUses = json['productUses'];
    sideEffects = json['sideEffects'];
    howToUse = json['howToUse'];
    safetyInstruction = json['safetyInstruction'];
    stockAvailability = json['stockAvailability'];
    actualPrice = double.tryParse(json['actualPrice'].toString());
    offerPrice = double.tryParse(json['offerPrice'].toString());
    discountPercentage = double.tryParse(json['discountPercentage'].toString());
    quantityVarient = json['QuantityVarient'];
    measurement = json['measurement'];
    type = json['type'];
    addedToCart = json['addedToCart'];
    count = json['count'];
    rating = double.tryParse(json['rating'].toString());
    totalRatingValue = json['TotalRatingValue'];
    countOfRating = json['countOfRating'];
    maximumRatingValue = json['MaximumRatingValue'];
    rating1 = json['rating1'];
    rating2 = json['rating2'];
    rating3 = json['rating3'];
    rating4 = json['rating4'];
    rating5 = json['rating5'];
    priceId = json['priceId'];
    OtherInformation = json['OtherInformation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['medicineId'] = this.medicineId;
    data['medicineName'] = this.medicineName;
    data['TypeValues'] = this.typeValues;
    data['image'] = this.image;
    data['image2'] = this.image2;
    data['image3'] = this.image3;
    data['expireTime'] = this.expireTime;
    data['productInformation'] = this.productInformation;
    data['productUses'] = this.productUses;
    data['sideEffects'] = this.sideEffects;
    data['howToUse'] = this.howToUse;
    data['safetyInstruction'] = this.safetyInstruction;
    data['stockAvailability'] = this.stockAvailability;
    data['actualPrice'] = this.actualPrice;
    data['offerPrice'] = this.offerPrice;
    data['discountPercentage'] = this.discountPercentage;
    data['QuantityVarient'] = this.quantityVarient;
    data['measurement'] = this.measurement;
    data['type'] = this.type;
    data['addedToCart'] = this.addedToCart;
    data['count'] = this.count;
    data['rating'] = this.rating;
    data['TotalRatingValue'] = this.totalRatingValue;
    data['countOfRating'] = this.countOfRating;
    data['MaximumRatingValue'] = this.maximumRatingValue;
    data['rating1'] = this.rating1;
    data['rating2'] = this.rating2;
    data['rating3'] = this.rating3;
    data['rating4'] = this.rating4;
    data['rating5'] = this.rating5;
    data['priceId'] = this.priceId;
    return data;
  }
}

class BrandDescription {
  String? brandName;
  String? brandAddress;
  int? brandPinCode;

  BrandDescription({this.brandName, this.brandAddress, this.brandPinCode});

  BrandDescription.fromJson(Map<String, dynamic> json) {
    brandName = json['brandName'];
    brandAddress = json['brandAddress'];
    brandPinCode = json['brandPinCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandName'] = this.brandName;
    data['brandAddress'] = this.brandAddress;
    data['brandPinCode'] = this.brandPinCode;
    return data;
  }
}

class Ingredients {
  String? saltName;

  Ingredients({this.saltName});

  Ingredients.fromJson(Map<String, dynamic> json) {
    saltName = json['saltName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['saltName'] = this.saltName;
    return data;
  }
}

class PriceList {
  int? priceId;
  int? quantity;
  String? varient;
  String? measurementScale;
  String? stockAvailability;

  PriceList(
      {this.priceId,
      this.quantity,
      this.varient,
      this.measurementScale,
      this.stockAvailability});

  PriceList.fromJson(Map<String, dynamic> json) {
    priceId = json['priceId'];
    quantity = json['quantity'];
    varient = json['varient'];
    measurementScale = json['measurementScale'];
    stockAvailability = json['stockAvailability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['priceId'] = this.priceId;
    data['quantity'] = this.quantity;
    data['varient'] = this.varient;
    data['measurementScale'] = this.measurementScale;
    data['stockAvailability'] = this.stockAvailability;
    return data;
  }
}

class ReviewList {
  String? name;
  String? detail;
  double? rating;
  String? time;

  ReviewList({this.name, this.detail, this.rating, this.time});

  ReviewList.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    detail = json['detail'];
    rating = double.tryParse(json['rating'].toString());
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['detail'] = this.detail;
    data['rating'] = this.rating;
    data['time'] = this.time;
    return data;
  }
}

class SlideList1 {
  int? isId;
  String? isImagePath;
  String? isCat;
  String? isSubCat;
  String? isSubSubCat;
  String? isSliderType;
  int? isStatus;

  SlideList1(
      {this.isId,
      this.isImagePath,
      this.isCat,
      this.isSubCat,
      this.isSubSubCat,
      this.isSliderType,
      this.isStatus});

  SlideList1.fromJson(Map<String, dynamic> json) {
    isId = json['is_id'];
    isImagePath = json['is_image_path'];
    isCat = json['is_cat'];
    isSubCat = json['is_sub_cat'];
    isSubSubCat = json['is_sub_sub_cat'];
    isSliderType = json['is_slider_type'];
    isStatus = json['is_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_id'] = this.isId;
    data['is_image_path'] = this.isImagePath;
    data['is_cat'] = this.isCat;
    data['is_sub_cat'] = this.isSubCat;
    data['is_sub_sub_cat'] = this.isSubSubCat;
    data['is_slider_type'] = this.isSliderType;
    data['is_status'] = this.isStatus;
    return data;
  }
}

class SlideList2 {
  int? isId;
  String? isImagePath;
  String? isCat;
  String? isSubCat;
  String? isSubSubCat;
  String? isSliderType;
  int? isStatus;

  SlideList2(
      {this.isId,
      this.isImagePath,
      this.isCat,
      this.isSubCat,
      this.isSubSubCat,
      this.isSliderType,
      this.isStatus});

  SlideList2.fromJson(Map<String, dynamic> json) {
    isId = json['is_id'];
    isImagePath = json['is_image_path'];
    isCat = json['is_cat'];
    isSubCat = json['is_sub_cat'];
    isSubSubCat = json['is_sub_sub_cat'];
    isSliderType = json['is_slider_type'];
    isStatus = json['is_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_id'] = this.isId;
    data['is_image_path'] = this.isImagePath;
    data['is_cat'] = this.isCat;
    data['is_sub_cat'] = this.isSubCat;
    data['is_sub_sub_cat'] = this.isSubSubCat;
    data['is_slider_type'] = this.isSliderType;
    data['is_status'] = this.isStatus;
    return data;
  }
}

class BannerImage {
  String? image;
  String? bannerTitle;

  BannerImage({this.image, this.bannerTitle});

  BannerImage.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    bannerTitle = json['bannerTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['bannerTitle'] = this.bannerTitle;
    return data;
  }
}

class SimilarProduct {
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

  SimilarProduct(
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

  SimilarProduct.fromJson(Map<String, dynamic> json) {
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

class CardDetails {
  int? productCount;
  double? totalActualPrice;
  double? totalOfferedPrice;
  double? totalDiscountPrice;

  CardDetails(
      {this.productCount,
      this.totalActualPrice,
      this.totalOfferedPrice,
      this.totalDiscountPrice});

  CardDetails.fromJson(Map<String, dynamic> json) {
    productCount = json['productCount'];
    totalActualPrice = double.tryParse(json['totalActualPrice'].toString());
    totalOfferedPrice = double.tryParse(json['totalOfferedPrice'].toString());
    totalDiscountPrice = double.tryParse(json['totalDiscountPrice'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productCount'] = this.productCount;
    data['totalActualPrice'] = this.totalActualPrice;
    data['totalOfferedPrice'] = this.totalOfferedPrice;
    data['totalDiscountPrice'] = this.totalDiscountPrice;
    return data;
  }
}

// class MedicineDetailResp {
//   String? result;
//   String? status;
//   String? message;
//   JSONData? jSONData;

//   MedicineDetailResp({this.result, this.status, this.message, this.jSONData});

//   MedicineDetailResp.fromJson(Map<String, dynamic> json) {
//     result = json['result'];
//     status = json['status'];
//     message = json['Message'];
//     jSONData = json['JSONData'] != null
//         ? new JSONData.fromJson(json['JSONData'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['result'] = this.result;
//     data['status'] = this.status;
//     data['Message'] = this.message;
//     if (this.jSONData != null) {
//       data['JSONData'] = this.jSONData!.toJson();
//     }
//     return data;
//   }
// }

// class JSONData {
//   List<Description>? description;
//   String? deliveryTime;
//   List<PriceList>? priceList;
//   List<ReviewList>? reviewList;
//   List<SlideList1>? slideList1;
//   List<SlideList2>? slideList2;
//   List<BannerImage>? bannerImage;
//   List<SimilarProduct>? similarProduct;
//   List<FrequentBought>? frequentBought;
//   List<CustomerAlsoPurchase>? customerAlsoPurchase;
//   List<CardDetails>? cardDetails;

//   JSONData(
//       {this.description,
//       this.deliveryTime,
//       this.priceList,
//       this.reviewList,
//       this.slideList1,
//       this.slideList2,
//       this.bannerImage,
//       this.similarProduct,
//       this.frequentBought,
//       this.customerAlsoPurchase,
//       this.cardDetails});

//   JSONData.fromJson(Map<String, dynamic> json) {
//     if (json['Description'] != null) {
//       description = <Description>[];
//       json['Description'].forEach((v) {
//         description!.add(new Description.fromJson(v));
//       });
//     }
//     deliveryTime = json['deliveryTime'];
//     if (json['priceList'] != null) {
//       priceList = <PriceList>[];
//       json['priceList'].forEach((v) {
//         priceList!.add(new PriceList.fromJson(v));
//       });
//     }
//     if (json['ReviewList'] != null) {
//       reviewList = <ReviewList>[];
//       json['ReviewList'].forEach((v) {
//         reviewList!.add(new ReviewList.fromJson(v));
//       });
//     }
//     if (json['slideList1'] != null) {
//       slideList1 = <SlideList1>[];
//       json['slideList1'].forEach((v) {
//         slideList1!.add(new SlideList1.fromJson(v));
//       });
//     }
//     if (json['slideList2'] != null) {
//       slideList2 = <SlideList2>[];
//       json['slideList2'].forEach((v) {
//         slideList2!.add(new SlideList2.fromJson(v));
//       });
//     }
//     if (json['bannerImage'] != null) {
//       bannerImage = <BannerImage>[];
//       json['bannerImage'].forEach((v) {
//         bannerImage!.add(new BannerImage.fromJson(v));
//       });
//     }
//     if (json['similarProduct'] != null) {
//       similarProduct = <SimilarProduct>[];
//       json['similarProduct'].forEach((v) {
//         similarProduct!.add(new SimilarProduct.fromJson(v));
//       });
//     }
//     if (json['frequentBought'] != null) {
//       frequentBought = <FrequentBought>[];
//       json['frequentBought'].forEach((v) {
//         frequentBought!.add(new FrequentBought.fromJson(v));
//       });
//     }
//     if (json['customerAlsoPurchase'] != null) {
//       customerAlsoPurchase = <CustomerAlsoPurchase>[];
//       json['customerAlsoPurchase'].forEach((v) {
//         customerAlsoPurchase!.add(new CustomerAlsoPurchase.fromJson(v));
//       });
//     }
//     if (json['cardDetails'] != null) {
//       cardDetails = <CardDetails>[];
//       json['cardDetails'].forEach((v) {
//         cardDetails!.add(new CardDetails.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.description != null) {
//       data['Description'] = this.description!.map((v) => v.toJson()).toList();
//     }
//     data['deliveryTime'] = this.deliveryTime;
//     if (this.priceList != null) {
//       data['priceList'] = this.priceList!.map((v) => v.toJson()).toList();
//     }
//     if (this.reviewList != null) {
//       data['ReviewList'] = this.reviewList!.map((v) => v.toJson()).toList();
//     }
//     if (this.slideList1 != null) {
//       data['slideList1'] = this.slideList1!.map((v) => v.toJson()).toList();
//     }
//     if (this.slideList2 != null) {
//       data['slideList2'] = this.slideList2!.map((v) => v.toJson()).toList();
//     }
//     if (this.bannerImage != null) {
//       data['bannerImage'] = this.bannerImage!.map((v) => v.toJson()).toList();
//     }
//     if (this.similarProduct != null) {
//       data['similarProduct'] =
//           this.similarProduct!.map((v) => v.toJson()).toList();
//     }
//     if (this.frequentBought != null) {
//       data['frequentBought'] =
//           this.frequentBought!.map((v) => v.toJson()).toList();
//     }
//     if (this.customerAlsoPurchase != null) {
//       data['customerAlsoPurchase'] =
//           this.customerAlsoPurchase!.map((v) => v.toJson()).toList();
//     }
//     if (this.cardDetails != null) {
//       data['cardDetails'] = this.cardDetails!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Description {
//   int? medicineId;
//   String? medicineName;
//   String? typeValues;
//   String? image;
//   String? image2;
//   String? image3;
//   String? expireTime;
//   String? productInformation;
//   String? productUses;
//   String? sideEffects;
//   String? howToUse;
//   String? safetyInstruction;
//   String? stockAvailability;
//   double? actualPrice;
//   double? offerPrice;
//   double? discountPercentage;
//   int? quantityVarient;
//   String? measurement;
//   String? type;
//   int? addedToCart;
//   int? count;
//   double? rating;
//   double? totalRatingValue;
//   int? countOfRating;
//   int? maximumRatingValue;
//   String? rating1;
//   String? rating2;
//   String? rating3;
//   String? rating4;
//   String? rating5;

//   Description(
//       {this.medicineId,
//       this.medicineName,
//       this.typeValues,
//       this.image,
//       this.image2,
//       this.image3,
//       this.expireTime,
//       this.productInformation,
//       this.productUses,
//       this.sideEffects,
//       this.howToUse,
//       this.safetyInstruction,
//       this.stockAvailability,
//       this.actualPrice,
//       this.offerPrice,
//       this.discountPercentage,
//       this.quantityVarient,
//       this.measurement,
//       this.type,
//       this.addedToCart,
//       this.count,
//       this.rating,
//       this.totalRatingValue,
//       this.countOfRating,
//       this.maximumRatingValue,
//       this.rating1,
//       this.rating2,
//       this.rating3,
//       this.rating4,
//       this.rating5});

//   Description.fromJson(Map<String, dynamic> json) {
//     medicineId = json['medicineId'];
//     medicineName = json['medicineName'];
//     typeValues = json['TypeValues'];
//     image = json['image'];
//     image2 = json['image2'];
//     image3 = json['image3'];
//     expireTime = json['expireTime'];
//     productInformation = json['productInformation'];
//     productUses = json['productUses'];
//     sideEffects = json['sideEffects'];
//     howToUse = json['howToUse'];
//     safetyInstruction = json['safetyInstruction'];
//     stockAvailability = json['stockAvailability'];
//     actualPrice = double.tryParse(json['actualPrice'].toString());
//     offerPrice = double.tryParse(json['offerPrice'].toString());
//     discountPercentage = double.tryParse(json['discountPercentage'].toString());
//     quantityVarient = json['QuantityVarient'];
//     measurement = json['measurement'];
//     type = json['type'];
//     addedToCart = json['addedToCart'];
//     count = json['count'];
//     rating = double.tryParse(json['rating'].toString());
//     totalRatingValue = json['TotalRatingValue'];
//     countOfRating = json['countOfRating'];
//     maximumRatingValue = json['MaximumRatingValue'];
//     rating1 = json['rating1'];
//     rating2 = json['rating2'];
//     rating3 = json['rating3'];
//     rating4 = json['rating4'];
//     rating5 = json['rating5'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['medicineId'] = this.medicineId;
//     data['medicineName'] = this.medicineName;
//     data['TypeValues'] = this.typeValues;
//     data['image'] = this.image;
//     data['image2'] = this.image2;
//     data['image3'] = this.image3;
//     data['expireTime'] = this.expireTime;
//     data['productInformation'] = this.productInformation;
//     data['productUses'] = this.productUses;
//     data['sideEffects'] = this.sideEffects;
//     data['howToUse'] = this.howToUse;
//     data['safetyInstruction'] = this.safetyInstruction;
//     data['stockAvailability'] = this.stockAvailability;
//     data['actualPrice'] = this.actualPrice;
//     data['offerPrice'] = this.offerPrice;
//     data['discountPercentage'] = this.discountPercentage;
//     data['QuantityVarient'] = this.quantityVarient;
//     data['measurement'] = this.measurement;
//     data['type'] = this.type;
//     data['addedToCart'] = this.addedToCart;
//     data['count'] = this.count;
//     data['rating'] = this.rating;
//     data['TotalRatingValue'] = this.totalRatingValue;
//     data['countOfRating'] = this.countOfRating;
//     data['MaximumRatingValue'] = this.maximumRatingValue;
//     data['rating1'] = this.rating1;
//     data['rating2'] = this.rating2;
//     data['rating3'] = this.rating3;
//     data['rating4'] = this.rating4;
//     data['rating5'] = this.rating5;
//     return data;
//   }
// }

// class SlideList2 {
//   int? isId;
//   String? isImagePath;
//   String? isCat;
//   String? isSubCat;
//   String? isSubSubCat;
//   String? isSliderType;
//   int? isStatus;

//   SlideList2(
//       {this.isId,
//       this.isImagePath,
//       this.isCat,
//       this.isSubCat,
//       this.isSubSubCat,
//       this.isSliderType,
//       this.isStatus});

//   SlideList2.fromJson(Map<String, dynamic> json) {
//     isId = json['is_id'];
//     isImagePath = json['is_image_path'];
//     isCat = json['is_cat'];
//     isSubCat = json['is_sub_cat'];
//     isSubSubCat = json['is_sub_sub_cat'];
//     isSliderType = json['is_slider_type'];
//     isStatus = json['is_status'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['is_id'] = this.isId;
//     data['is_image_path'] = this.isImagePath;
//     data['is_cat'] = this.isCat;
//     data['is_sub_cat'] = this.isSubCat;
//     data['is_sub_sub_cat'] = this.isSubSubCat;
//     data['is_slider_type'] = this.isSliderType;
//     data['is_status'] = this.isStatus;
//     return data;
//   }
// }

// class CustomerAlsoPurchase {
//   int? medicineId;
//   int? priceId;
//   String? typeValues;
//   String? medicineName;
//   String? stockAvailability;
//   String? image;
//   double? actualPrice;
//   double? offerPrice;
//   double? discountPercentage;
//   int? quantityVarient;
//   String? measurement;
//   String? type;
//   int? addedToCart;
//   double? rating;
//   int? count;
//   int? countOfRating;

//   CustomerAlsoPurchase(
//       {this.medicineId,
//       this.priceId,
//       this.typeValues,
//       this.medicineName,
//       this.stockAvailability,
//       this.image,
//       this.actualPrice,
//       this.offerPrice,
//       this.discountPercentage,
//       this.quantityVarient,
//       this.measurement,
//       this.type,
//       this.addedToCart,
//       this.rating,
//       this.count,
//       this.countOfRating});

//   CustomerAlsoPurchase.fromJson(Map<String, dynamic> json) {
//     medicineId = json['medicineId'];
//     priceId = json['priceId'];
//     typeValues = json['TypeValues'];
//     medicineName = json['medicineName'];
//     stockAvailability = json['stockAvailability'];
//     image = json['image'];
//     actualPrice = double.tryParse(json['actualPrice'].toString());
//     offerPrice = double.tryParse(json['offerPrice'].toString());
//     discountPercentage = double.tryParse(json['discountPercentage'].toString());
//     quantityVarient = json['QuantityVarient'];
//     measurement = json['measurement'];
//     type = json['type'];
//     addedToCart = json['addedToCart'];
//     rating = double.tryParse(json['rating'].toString());
//     count = json['count'];
//     countOfRating = json['countOfRating'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['medicineId'] = this.medicineId;
//     data['priceId'] = this.priceId;
//     data['TypeValues'] = this.typeValues;
//     data['medicineName'] = this.medicineName;
//     data['stockAvailability'] = this.stockAvailability;
//     data['image'] = this.image;
//     data['actualPrice'] = this.actualPrice;
//     data['offerPrice'] = this.offerPrice;
//     data['discountPercentage'] = this.discountPercentage;
//     data['QuantityVarient'] = this.quantityVarient;
//     data['measurement'] = this.measurement;
//     data['type'] = this.type;
//     data['addedToCart'] = this.addedToCart;
//     data['rating'] = this.rating;
//     data['count'] = this.count;
//     data['countOfRating'] = this.countOfRating;
//     return data;
//   }
// }

// class PriceList {
//   int? priceId;
//   int? quantity;
//   String? varient;
//   String? measurementScale;
//   String? stockAvailability;

//   PriceList(
//       {this.priceId,
//       this.quantity,
//       this.varient,
//       this.measurementScale,
//       this.stockAvailability});

//   PriceList.fromJson(Map<String, dynamic> json) {
//     priceId = json['priceId'];
//     quantity = json['quantity'];
//     varient = json['varient'];
//     measurementScale = json['measurementScale'];
//     stockAvailability = json['stockAvailability'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['priceId'] = this.priceId;
//     data['quantity'] = this.quantity;
//     data['varient'] = this.varient;
//     data['measurementScale'] = this.measurementScale;
//     data['stockAvailability'] = this.stockAvailability;
//     return data;
//   }
// }

// class ReviewList {
//   String? name;
//   String? detail;
//   double? rating;
//   String? time;

//   ReviewList({this.name, this.detail, this.rating, this.time});

//   ReviewList.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     detail = json['detail'];
//     rating = double.tryParse(json['rating'].toString());
//     time = json['time'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['detail'] = this.detail;
//     data['rating'] = this.rating;
//     data['time'] = this.time;
//     return data;
//   }
// }

// class SlideList1 {
//   int? isId;
//   String? isImagePath;
//   String? isCat;
//   String? isSubCat;
//   String? isSubSubCat;
//   String? isSliderType;
//   int? isStatus;

//   SlideList1(
//       {this.isId,
//       this.isImagePath,
//       this.isCat,
//       this.isSubCat,
//       this.isSubSubCat,
//       this.isSliderType,
//       this.isStatus});

//   SlideList1.fromJson(Map<String, dynamic> json) {
//     isId = json['is_id'];
//     isImagePath = json['is_image_path'];
//     isCat = json['is_cat'];
//     isSubCat = json['is_sub_cat'];
//     isSubSubCat = json['is_sub_sub_cat'];
//     isSliderType = json['is_slider_type'];
//     isStatus = json['is_status'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['is_id'] = this.isId;
//     data['is_image_path'] = this.isImagePath;
//     data['is_cat'] = this.isCat;
//     data['is_sub_cat'] = this.isSubCat;
//     data['is_sub_sub_cat'] = this.isSubSubCat;
//     data['is_slider_type'] = this.isSliderType;
//     data['is_status'] = this.isStatus;
//     return data;
//   }
// }

// class BannerImage {
//   String? image;
//   String? bannerTitle;

//   BannerImage({this.image, this.bannerTitle});

//   BannerImage.fromJson(Map<String, dynamic> json) {
//     image = json['image'];
//     bannerTitle = json['bannerTitle'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['image'] = this.image;
//     data['bannerTitle'] = this.bannerTitle;
//     return data;
//   }
// }

// class SimilarProduct {
//   int? medicineId;
//   int? priceId;
//   String? typeValues;
//   String? medicineName;
//   String? stockAvailability;
//   String? image;
//   double? actualPrice;
//   double? offerPrice;
//   double? discountPercentage;
//   int? quantityVarient;
//   String? measurement;
//   String? type;
//   int? addedToCart;
//   double? rating;
//   int? count;
//   int? countOfRating;

//   SimilarProduct(
//       {this.medicineId,
//       this.priceId,
//       this.typeValues,
//       this.medicineName,
//       this.stockAvailability,
//       this.image,
//       this.actualPrice,
//       this.offerPrice,
//       this.discountPercentage,
//       this.quantityVarient,
//       this.measurement,
//       this.type,
//       this.addedToCart,
//       this.rating,
//       this.count,
//       this.countOfRating});

//   SimilarProduct.fromJson(Map<String, dynamic> json) {
//     medicineId = json['medicineId'];
//     priceId = json['priceId'];
//     typeValues = json['TypeValues'];
//     medicineName = json['medicineName'];
//     stockAvailability = json['stockAvailability'];
//     image = json['image'];
//     actualPrice = double.tryParse(json['actualPrice'].toString());
//     offerPrice = double.tryParse(json['offerPrice'].toString());
//     discountPercentage = double.tryParse(json['discountPercentage'].toString());
//     quantityVarient = json['QuantityVarient'];
//     measurement = json['measurement'];
//     type = json['type'];
//     addedToCart = json['addedToCart'];
//     rating = double.tryParse(json['rating'].toString());
//     count = json['count'];
//     countOfRating = json['countOfRating'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['medicineId'] = this.medicineId;
//     data['priceId'] = this.priceId;
//     data['TypeValues'] = this.typeValues;
//     data['medicineName'] = this.medicineName;
//     data['stockAvailability'] = this.stockAvailability;
//     data['image'] = this.image;
//     data['actualPrice'] = this.actualPrice;
//     data['offerPrice'] = this.offerPrice;
//     data['discountPercentage'] = this.discountPercentage;
//     data['QuantityVarient'] = this.quantityVarient;
//     data['measurement'] = this.measurement;
//     data['type'] = this.type;
//     data['addedToCart'] = this.addedToCart;
//     data['rating'] = this.rating;
//     data['count'] = this.count;
//     data['countOfRating'] = this.countOfRating;
//     return data;
//   }
// }

// class FrequentBought {
//   int? medicineId;
//   int? priceId;
//   String? medicineName;
//   String? stockAvailability;
//   String? image;
//   double? actualPrice;
//   double? offerPrice;
//   double? discountPercentage;
//   int? quantityVarient;
//   String? measurement;
//   String? type;
//   int? addedToCart;
//   int? count;
//   double? rating;
//   int? countOfRating;

//   FrequentBought(
//       {this.medicineId,
//       this.priceId,
//       this.medicineName,
//       this.stockAvailability,
//       this.image,
//       this.actualPrice,
//       this.offerPrice,
//       this.discountPercentage,
//       this.quantityVarient,
//       this.measurement,
//       this.type,
//       this.addedToCart,
//       this.count,
//       this.rating,
//       this.countOfRating});

//   FrequentBought.fromJson(Map<String, dynamic> json) {
//     medicineId = json['medicineId'];
//     priceId = json['priceId'];
//     medicineName = json['medicineName'];
//     stockAvailability = json['stockAvailability'];
//     image = json['image'];
//     actualPrice = double.tryParse(json['actualPrice'].toString());
//     offerPrice = double.tryParse(json['offerPrice'].toString());
//     discountPercentage = double.tryParse(json['discountPercentage'].toString());
//     quantityVarient = json['QuantityVarient'];
//     measurement = json['measurement'];
//     type = json['type'];
//     addedToCart = json['addedToCart'];
//     count = json['count'];
//     rating = double.tryParse(json['rating'].toString());
//     countOfRating = json['countOfRating'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['medicineId'] = this.medicineId;
//     data['priceId'] = this.priceId;
//     data['medicineName'] = this.medicineName;
//     data['stockAvailability'] = this.stockAvailability;
//     data['image'] = this.image;
//     data['actualPrice'] = this.actualPrice;
//     data['offerPrice'] = this.offerPrice;
//     data['discountPercentage'] = this.discountPercentage;
//     data['QuantityVarient'] = this.quantityVarient;
//     data['measurement'] = this.measurement;
//     data['type'] = this.type;
//     data['addedToCart'] = this.addedToCart;
//     data['count'] = this.count;
//     data['rating'] = this.rating;
//     data['countOfRating'] = this.countOfRating;
//     return data;
//   }
// }

// class CardDetails {
//   int? productCount;
//   double? totalActualPrice;
//   double? totalOfferedPrice;
//   double? totalDiscountPrice;

//   CardDetails(
//       {this.productCount,
//       this.totalActualPrice,
//       this.totalOfferedPrice,
//       this.totalDiscountPrice});

//   CardDetails.fromJson(Map<String, dynamic> json) {
//     productCount = json['productCount'];
//     totalActualPrice = double.tryParse(json['totalActualPrice'].toString());
//     totalOfferedPrice = double.tryParse(json['totalOfferedPrice'].toString());
//     totalDiscountPrice = double.tryParse(json['totalDiscountPrice'].toString());
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['productCount'] = this.productCount;
//     data['totalActualPrice'] = this.totalActualPrice;
//     data['totalOfferedPrice'] = this.totalOfferedPrice;
//     data['totalDiscountPrice'] = this.totalDiscountPrice;
//     return data;
//   }
// }
