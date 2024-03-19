class MpDashboardResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  MpDashboardResp({this.result, this.status, this.message, this.jSONData});

  MpDashboardResp.fromJson(Map<String, dynamic> json) {
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
  String? title1;
  List<SliderData>? sliderData;
  List<TopRatedCategory>? topRatedCategory;
  String? title2;
  List<CategoryData>? categoryData;
  List<HealthCardBanner>? healthCardBanner;
  String? title3;
  List<PopularCategory>? popularCategory;
  String? title4;
  List<EmergencyCategory>? emergencyCategory;
  CartData? cartData;

  JSONData(
      {this.title1,
      this.sliderData,
      this.title2,
      this.categoryData,
      this.topRatedCategory,
      this.healthCardBanner,
      this.title3,
      this.popularCategory,
      this.title4,
      this.emergencyCategory});

  JSONData.fromJson(Map<String, dynamic> json) {
    title1 = json['title1'];
    cartData = json['cartData'] != null
        ? new CartData.fromJson(json['cartData'])
        : null;
    if (json['sliderData'] != null) {
      sliderData = <SliderData>[];
      json['sliderData'].forEach((v) {
        sliderData!.add(new SliderData.fromJson(v));
      });
    }
    if (json['topRatedCategory'] != null) {
      topRatedCategory = <TopRatedCategory>[];
      json['topRatedCategory'].forEach((v) {
        topRatedCategory!.add(new TopRatedCategory.fromJson(v));
      });
    }
    title2 = json['title2'];
    if (json['categoryData'] != null) {
      categoryData = <CategoryData>[];
      json['categoryData'].forEach((v) {
        categoryData!.add(new CategoryData.fromJson(v));
      });
    }
    if (json['HealthCardBanner'] != null) {
      healthCardBanner = <HealthCardBanner>[];
      json['HealthCardBanner'].forEach((v) {
        healthCardBanner!.add(new HealthCardBanner.fromJson(v));
      });
    }

    title3 = json['title3'];
    if (json['popularCategory'] != null) {
      popularCategory = <PopularCategory>[];
      json['popularCategory'].forEach((v) {
        popularCategory!.add(new PopularCategory.fromJson(v));
      });
    }
    title4 = json['title4'];
    if (json['emergencyCategory'] != null) {
      emergencyCategory = <EmergencyCategory>[];
      json['emergencyCategory'].forEach((v) {
        emergencyCategory!.add(new EmergencyCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title1'] = this.title1;
    if (this.sliderData != null) {
      data['sliderData'] = this.sliderData!.map((v) => v.toJson()).toList();
    }
    if (this.topRatedCategory != null) {
      data['topRatedCategory'] =
          this.topRatedCategory!.map((v) => v.toJson()).toList();
    }
    data['title2'] = this.title2;
    if (this.categoryData != null) {
      data['categoryData'] = this.categoryData!.map((v) => v.toJson()).toList();
    }
    if (this.healthCardBanner != null) {
      data['HealthCardBanner'] =
          this.healthCardBanner!.map((v) => v.toJson()).toList();
    }
    data['title3'] = this.title3;
    if (this.popularCategory != null) {
      data['popularCategory'] =
          this.popularCategory!.map((v) => v.toJson()).toList();
    }
    data['title4'] = this.title4;
    if (this.emergencyCategory != null) {
      data['emergencyCategory'] =
          this.emergencyCategory!.map((v) => v.toJson()).toList();
    }
    if (this.cartData != null) {
      data['cartData'] = this.cartData!.toJson();
    }
    return data;
  }
}

class SliderData {
  String? image;

  SliderData({this.image});

  SliderData.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    return data;
  }
}

class CategoryData {
  int? categoryId;
  String? categoryName;
  String? categoryImage;

  CategoryData({this.categoryId, this.categoryName, this.categoryImage});

  CategoryData.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['categoryImage'] = this.categoryImage;
    return data;
  }
}

class HealthCardBanner {
  String? image;
  String? bannerTitle;

  HealthCardBanner({this.image, this.bannerTitle});

  HealthCardBanner.fromJson(Map<String, dynamic> json) {
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

class PopularCategory {
  int? categoryId;
  String? categoryName;
  String? categoryImage;

  PopularCategory({this.categoryId, this.categoryName, this.categoryImage});

  PopularCategory.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['categoryImage'] = this.categoryImage;
    return data;
  }
}

class EmergencyCategory {
  int? categoryId;
  String? categoryName;
  String? categoryImage;

  EmergencyCategory({this.categoryId, this.categoryName, this.categoryImage});

  EmergencyCategory.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['categoryImage'] = this.categoryImage;
    return data;
  }
}

class TopRatedCategory {
  int? categoryId;
  String? categoryName;
  String? categoryImage;
  String? description;
  String? rating;
  int? reviewCount;

  TopRatedCategory(
      {this.categoryId,
      this.categoryName,
      this.categoryImage,
      this.description,
      this.rating});

  TopRatedCategory.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    categoryImage = json['categoryImage'];
    description = json['description'];
    rating = json['rating'];
    reviewCount = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['categoryImage'] = this.categoryImage;
    data['description'] = this.description;
    data['rating'] = this.rating;
    data['count'] = this.reviewCount;
    return data;
  }
}

class MpCartResp {
  CartData? cartData;

  MpCartResp({this.cartData});

  MpCartResp.fromJson(Map<String, dynamic> json) {
    cartData = json['cartData'] != null
        ? new CartData.fromJson(json['cartData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cartData != null) {
      data['cartData'] = this.cartData!.toJson();
    }
    return data;
  }
}

class CartData {
  int? cartCount;
  double? cartAmount;

  CartData({this.cartCount, this.cartAmount});

  CartData.fromJson(Map<String, dynamic> json) {
    cartCount = json['cartCount'];
    cartAmount = double.tryParse(json['cartAmount'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cartCount'] = this.cartCount;
    data['cartAmount'] = this.cartAmount;
    return data;
  }
}
