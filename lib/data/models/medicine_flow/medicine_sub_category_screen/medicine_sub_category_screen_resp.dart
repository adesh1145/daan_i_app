class MedicineSubCategoryResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MedicineSubCategoryResp(
      {this.result, this.status, this.message, this.jSONData});

  MedicineSubCategoryResp.fromJson(Map<String, dynamic> json) {
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
  List<SlideList>? slideList;
  List<BannerImage>? bannerImage;
  List<CategoryList>? categoryList;
  List<TopDealList>? topDealList;
  List<ProductList>? productList;
  List<TopBrands>? topBrands;
  List<String>? sortList;
  List<CardDetails>? cardDetails;

  JSONData(
      {this.slideList,
      this.bannerImage,
      this.categoryList,
      this.topDealList,
      this.productList,
      this.topBrands,
      this.sortList});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['slideList'] != null) {
      slideList = <SlideList>[];
      json['slideList'].forEach((v) {
        slideList!.add(new SlideList.fromJson(v));
      });
    }
    if (json['bannerImage'] != null) {
      bannerImage = <BannerImage>[];
      json['bannerImage'].forEach((v) {
        bannerImage!.add(new BannerImage.fromJson(v));
      });
    }
    if (json['categoryList'] != null) {
      categoryList = <CategoryList>[];
      json['categoryList'].forEach((v) {
        categoryList!.add(new CategoryList.fromJson(v));
      });
    }
    if (json['topDealList'] != null) {
      topDealList = <TopDealList>[];
      json['topDealList'].forEach((v) {
        topDealList!.add(new TopDealList.fromJson(v));
      });
    }
    if (json['productList'] != null) {
      productList = <ProductList>[];
      json['productList'].forEach((v) {
        productList!.add(new ProductList.fromJson(v));
      });
    }
    if (json['topBrands'] != null) {
      topBrands = <TopBrands>[];
      json['topBrands'].forEach((v) {
        topBrands!.add(new TopBrands.fromJson(v));
      });
    }
    sortList = json['sortList'].cast<String>();
    if (json['cardDetails'] != null) {
      cardDetails = <CardDetails>[];
      json['cardDetails'].forEach((v) {
        cardDetails!.add(new CardDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.slideList != null) {
      data['slideList'] = this.slideList!.map((v) => v.toJson()).toList();
    }
    if (this.bannerImage != null) {
      data['bannerImage'] = this.bannerImage!.map((v) => v.toJson()).toList();
    }
    if (this.categoryList != null) {
      data['categoryList'] = this.categoryList!.map((v) => v.toJson()).toList();
    }
    if (this.topDealList != null) {
      data['topDealList'] = this.topDealList!.map((v) => v.toJson()).toList();
    }
    if (this.productList != null) {
      data['productList'] = this.productList!.map((v) => v.toJson()).toList();
    }
    if (this.topBrands != null) {
      data['topBrands'] = this.topBrands!.map((v) => v.toJson()).toList();
    }
    data['sortList'] = this.sortList;
    if (this.cardDetails != null) {
      data['cardDetails'] = this.cardDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SlideList {
  int? isId;
  String? isImagePath;
  String? isCat;
  String? isSubCat;
  String? isSubSubCat;
  String? isSliderType;
  int? isStatus;

  SlideList(
      {this.isId,
      this.isImagePath,
      this.isCat,
      this.isSubCat,
      this.isSubSubCat,
      this.isSliderType,
      this.isStatus});

  SlideList.fromJson(Map<String, dynamic> json) {
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

class CategoryList {
  int? categoryId;
  String? categoryName;
  String? image;

  CategoryList({this.categoryId, this.categoryName, this.image});

  CategoryList.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['image'] = this.image;
    return data;
  }
}

class TopDealList {
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

  TopDealList(
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

  TopDealList.fromJson(Map<String, dynamic> json) {
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

class TopBrands {
  int? brandId;
  String? brandName;
  String? image;

  TopBrands({this.brandId, this.brandName, this.image});

  TopBrands.fromJson(Map<String, dynamic> json) {
    brandId = json['brandId'];
    brandName = json['brandName'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['brandId'] = this.brandId;
    data['brandName'] = this.brandName;
    data['image'] = this.image;
    return data;
  }
}

class ProductList {
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

  ProductList(
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

  ProductList.fromJson(Map<String, dynamic> json) {
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
