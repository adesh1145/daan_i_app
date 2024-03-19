class MedicineDashboardResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MedicineDashboardResp(
      {this.result, this.status, this.message, this.jSONData});

  MedicineDashboardResp.fromJson(Map<String, dynamic> json) {
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
  List<SlideList1>? slideList1;
  List<SlideList2>? slideList2;
  List<SlideList3>? slideList3;
  List<PopularCategories>? popularCategories;
  List<BestSellingCategories>? bestSellingCategories;
  List<CategroryData>? categroryData;
  List<TopDeals>? topDeals;
  List<PopularCombo>? popularCombo;
  List<SupplementsDeal>? supplementsDeal;
  List<PopularBrands>? popularBrands;
  List<TopBrandsInSkinCare>? topBrandsInSkinCare;
  List<HealthCareDevices>? healthCareDevices;
  List<PopularMedicine>? popularMedicine;
  // List<Null>? homeopathy;
  List<VitaminList>? vitaminList;
  List<TopBrandsInHairCare>? topBrandsInHairCare;
  List<BannerImage>? bannerImage;
  List<CardDetails>? cardDetails;
  JSONData(
      {this.slideList1,
      this.slideList2,
      this.slideList3,
      this.popularCategories,
      this.bestSellingCategories,
      this.categroryData,
      this.topDeals,
      this.popularCombo,
      this.supplementsDeal,
      this.popularBrands,
      this.topBrandsInSkinCare,
      this.healthCareDevices,
      this.popularMedicine,
      // this.homeopathy,
      this.vitaminList});

  JSONData.fromJson(Map<String, dynamic> json) {
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
    if (json['slideList3'] != null) {
      slideList3 = <SlideList3>[];
      json['slideList3'].forEach((v) {
        slideList3!.add(new SlideList3.fromJson(v));
      });
    }
    if (json['popularCategories'] != null) {
      popularCategories = <PopularCategories>[];
      json['popularCategories'].forEach((v) {
        popularCategories!.add(new PopularCategories.fromJson(v));
      });
    }
    if (json['bestSellingCategories'] != null) {
      bestSellingCategories = <BestSellingCategories>[];
      json['bestSellingCategories'].forEach((v) {
        bestSellingCategories!.add(new BestSellingCategories.fromJson(v));
      });
    }
    if (json['categroryData'] != null) {
      categroryData = <CategroryData>[];
      json['categroryData'].forEach((v) {
        categroryData!.add(new CategroryData.fromJson(v));
      });
    }
    if (json['topDeals'] != null) {
      topDeals = <TopDeals>[];
      json['topDeals'].forEach((v) {
        topDeals!.add(new TopDeals.fromJson(v));
      });
    }
    if (json['popularCombo'] != null) {
      popularCombo = <PopularCombo>[];
      json['popularCombo'].forEach((v) {
        popularCombo!.add(new PopularCombo.fromJson(v));
      });
    }
    if (json['supplementsDeal'] != null) {
      supplementsDeal = <SupplementsDeal>[];
      json['supplementsDeal'].forEach((v) {
        supplementsDeal!.add(new SupplementsDeal.fromJson(v));
      });
    }
    if (json['popularBrands'] != null) {
      popularBrands = <PopularBrands>[];
      json['popularBrands'].forEach((v) {
        popularBrands!.add(new PopularBrands.fromJson(v));
      });
    }
    if (json['topBrandsInSkinCare'] != null) {
      topBrandsInSkinCare = <TopBrandsInSkinCare>[];
      json['topBrandsInSkinCare'].forEach((v) {
        topBrandsInSkinCare!.add(new TopBrandsInSkinCare.fromJson(v));
      });
    }
    if (json['HealthCareDevices'] != null) {
      healthCareDevices = <HealthCareDevices>[];
      json['HealthCareDevices'].forEach((v) {
        healthCareDevices!.add(new HealthCareDevices.fromJson(v));
      });
    }
    if (json['popularMedicine'] != null) {
      popularMedicine = <PopularMedicine>[];
      json['popularMedicine'].forEach((v) {
        popularMedicine!.add(new PopularMedicine.fromJson(v));
      });
    }
    // if (json['homeopathy'] != null) {
    //   homeopathy = <Null>[];
    //   json['homeopathy'].forEach((v) {
    //     homeopathy!.add(new Null.fromJson(v));
    //   });
    // }
    if (json['vitaminList'] != null) {
      vitaminList = <VitaminList>[];
      json['vitaminList'].forEach((v) {
        vitaminList!.add(new VitaminList.fromJson(v));
      });
    }
    if (json['bannerImage'] != null) {
      bannerImage = <BannerImage>[];
      json['bannerImage'].forEach((v) {
        bannerImage!.add(new BannerImage.fromJson(v));
      });
    }
    if (json['topBrandsInHairCare'] != null) {
      topBrandsInHairCare = <TopBrandsInHairCare>[];
      json['topBrandsInHairCare'].forEach((v) {
        topBrandsInHairCare!.add(new TopBrandsInHairCare.fromJson(v));
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
    if (this.slideList1 != null) {
      data['slideList1'] = this.slideList1!.map((v) => v.toJson()).toList();
    }
    if (this.slideList2 != null) {
      data['slideList2'] = this.slideList2!.map((v) => v.toJson()).toList();
    }
    if (this.slideList3 != null) {
      data['slideList3'] = this.slideList3!.map((v) => v.toJson()).toList();
    }
    if (this.popularCategories != null) {
      data['popularCategories'] =
          this.popularCategories!.map((v) => v.toJson()).toList();
    }
    if (this.bestSellingCategories != null) {
      data['bestSellingCategories'] =
          this.bestSellingCategories!.map((v) => v.toJson()).toList();
    }
    if (this.categroryData != null) {
      data['categroryData'] =
          this.categroryData!.map((v) => v.toJson()).toList();
    }
    if (this.topDeals != null) {
      data['topDeals'] = this.topDeals!.map((v) => v.toJson()).toList();
    }
    if (this.popularCombo != null) {
      data['popularCombo'] = this.popularCombo!.map((v) => v.toJson()).toList();
    }
    if (this.supplementsDeal != null) {
      data['supplementsDeal'] =
          this.supplementsDeal!.map((v) => v.toJson()).toList();
    }
    if (this.popularBrands != null) {
      data['popularBrands'] =
          this.popularBrands!.map((v) => v.toJson()).toList();
    }
    if (this.topBrandsInSkinCare != null) {
      data['topBrandsInSkinCare'] =
          this.topBrandsInSkinCare!.map((v) => v.toJson()).toList();
    }
    if (this.healthCareDevices != null) {
      data['HealthCareDevices'] =
          this.healthCareDevices!.map((v) => v.toJson()).toList();
    }
    if (this.popularMedicine != null) {
      data['popularMedicine'] =
          this.popularMedicine!.map((v) => v.toJson()).toList();
    }
    // if (this.homeopathy != null) {
    //   data['homeopathy'] = this.homeopathy!.map((v) => v.toJson()).toList();
    // }
    if (this.vitaminList != null) {
      data['vitaminList'] = this.vitaminList!.map((v) => v.toJson()).toList();
    }
    if (this.bannerImage != null) {
      data['bannerImage'] = this.bannerImage!.map((v) => v.toJson()).toList();
    }
    if (this.topBrandsInHairCare != null) {
      data['topBrandsInHairCare'] =
          this.topBrandsInHairCare!.map((v) => v.toJson()).toList();
    }
    if (this.cardDetails != null) {
      data['cardDetails'] = this.cardDetails!.map((v) => v.toJson()).toList();
    }
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

class SlideList3 {
  int? isId;
  String? isImagePath;
  String? isCat;
  String? isSubCat;
  String? isSubSubCat;
  String? isSliderType;
  int? isStatus;

  SlideList3(
      {this.isId,
      this.isImagePath,
      this.isCat,
      this.isSubCat,
      this.isSubSubCat,
      this.isSliderType,
      this.isStatus});

  SlideList3.fromJson(Map<String, dynamic> json) {
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

class PopularCategories {
  int? categoryId;
  String? categoryName;
  String? image;
  String? categoryLevel;

  PopularCategories(
      {this.categoryId, this.categoryName, this.image, this.categoryLevel});

  PopularCategories.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    image = json['image'];
    categoryLevel = json['categoryLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['image'] = this.image;
    data['categoryLevel'] = this.categoryLevel;
    return data;
  }
}

class BestSellingCategories {
  int? categoryId;
  String? categoryName;
  String? image;
  String? categoryLevel;

  BestSellingCategories(
      {this.categoryId, this.categoryName, this.image, this.categoryLevel});

  BestSellingCategories.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    image = json['image'];
    categoryLevel = json['categoryLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['image'] = this.image;
    data['categoryLevel'] = this.categoryLevel;
    return data;
  }
}

class CategroryData {
  int? categoryId;
  String? categoryName;
  String? image;
  String? categoryLevel;

  CategroryData(
      {this.categoryId, this.categoryName, this.image, this.categoryLevel});

  CategroryData.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    image = json['image'];
    categoryLevel = json['categoryLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['image'] = this.image;
    data['categoryLevel'] = this.categoryLevel;
    return data;
  }
}

class TopDeals {
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

  TopDeals(
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
      this.countOfRating});

  TopDeals.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class PopularCombo {
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

  PopularCombo(
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
      this.countOfRating});

  PopularCombo.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class SupplementsDeal {
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

  SupplementsDeal(
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
      this.countOfRating});

  SupplementsDeal.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class PopularBrands {
  int? brandId;
  String? brandName;
  String? image;

  PopularBrands({this.brandId, this.brandName, this.image});

  PopularBrands.fromJson(Map<String, dynamic> json) {
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

class TopBrandsInSkinCare {
  int? brandId;
  String? brandName;
  String? image;

  TopBrandsInSkinCare({this.brandId, this.brandName, this.image});

  TopBrandsInSkinCare.fromJson(Map<String, dynamic> json) {
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

class VitaminList {
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

  VitaminList(
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
      this.countOfRating});

  VitaminList.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class PopularMedicine {
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

  PopularMedicine(
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
      this.countOfRating});

  PopularMedicine.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}

class HealthCareDevices {
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

  HealthCareDevices(
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
      this.countOfRating});

  HealthCareDevices.fromJson(Map<String, dynamic> json) {
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

class TopBrandsInHairCare {
  int? brandId;
  String? brandName;
  String? image;

  TopBrandsInHairCare({this.brandId, this.brandName, this.image});

  TopBrandsInHairCare.fromJson(Map<String, dynamic> json) {
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
