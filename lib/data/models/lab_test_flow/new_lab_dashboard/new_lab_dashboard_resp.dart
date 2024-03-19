class NewLabDashboardResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  NewLabDashboardResp({this.result, this.status, this.message, this.jSONData});

  NewLabDashboardResp.fromJson(Map<String, dynamic> json) {
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
  List<GetLabSlideImages>? getLabSlideImages;
  String? title2;
  List<PathologyTestCategoryList>? pathologyTestCategoryList;
  List<BannerData>? bannerData;
  String? title4;
  List<RadiologyCategoryList>? radiologyCategoryList;
  String? title5;
  List<OrganTestCategoryList>? organTestCategoryList;
  String? title6;
  List<LabPatnerList>? labPatnerList;
  String? title7;
  String? title8;
  CartData? cartData;
  String? cityFlag;
  String? cityName;
  JSONData(
      {this.title1,
      this.getLabSlideImages,
      this.title2,
      this.pathologyTestCategoryList,
      this.bannerData,
      this.title4,
      this.radiologyCategoryList,
      this.title5,
      this.organTestCategoryList,
      this.title6,
      this.labPatnerList,
      this.title7,
      this.title8,
      this.cartData,
      this.cityFlag,
      this.cityName});

  JSONData.fromJson(Map<String, dynamic> json) {
    title1 = json['title1'];
    if (json['get_lab_slide_images'] != null) {
      getLabSlideImages = <GetLabSlideImages>[];
      json['get_lab_slide_images'].forEach((v) {
        getLabSlideImages!.add(new GetLabSlideImages.fromJson(v));
      });
    }
    title2 = json['title2'];
    if (json['pathology_test_category_list'] != null) {
      pathologyTestCategoryList = <PathologyTestCategoryList>[];
      json['pathology_test_category_list'].forEach((v) {
        pathologyTestCategoryList!
            .add(new PathologyTestCategoryList.fromJson(v));
      });
    }
    if (json['bannerData'] != null) {
      bannerData = <BannerData>[];
      json['bannerData'].forEach((v) {
        bannerData!.add(new BannerData.fromJson(v));
      });
    }
    title4 = json['title4'];
    if (json['radiology_category_list'] != null) {
      radiologyCategoryList = <RadiologyCategoryList>[];
      json['radiology_category_list'].forEach((v) {
        radiologyCategoryList!.add(new RadiologyCategoryList.fromJson(v));
      });
    }
    title5 = json['title5'];
    if (json['organ_test_category_list'] != null) {
      organTestCategoryList = <OrganTestCategoryList>[];
      json['organ_test_category_list'].forEach((v) {
        organTestCategoryList!.add(new OrganTestCategoryList.fromJson(v));
      });
    }
    title6 = json['title6'];
    if (json['labPatnerList'] != null) {
      labPatnerList = <LabPatnerList>[];
      json['labPatnerList'].forEach((v) {
        labPatnerList!.add(new LabPatnerList.fromJson(v));
      });
    }
    title7 = json['title7'];
    title8 = json['title8'];
    cartData = json['cart_data'] != null
        ? new CartData.fromJson(json['cart_data'])
        : null;
    cityFlag = json['cityFlag'];
    cityName = json['cityName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title1'] = this.title1;
    if (this.getLabSlideImages != null) {
      data['get_lab_slide_images'] =
          this.getLabSlideImages!.map((v) => v.toJson()).toList();
    }
    data['title2'] = this.title2;
    if (this.pathologyTestCategoryList != null) {
      data['pathology_test_category_list'] =
          this.pathologyTestCategoryList!.map((v) => v.toJson()).toList();
    }
    if (this.bannerData != null) {
      data['bannerData'] = this.bannerData!.map((v) => v.toJson()).toList();
    }
    data['title4'] = this.title4;
    if (this.radiologyCategoryList != null) {
      data['radiology_category_list'] =
          this.radiologyCategoryList!.map((v) => v.toJson()).toList();
    }
    data['title5'] = this.title5;
    if (this.organTestCategoryList != null) {
      data['organ_test_category_list'] =
          this.organTestCategoryList!.map((v) => v.toJson()).toList();
    }
    data['title6'] = this.title6;
    if (this.labPatnerList != null) {
      data['labPatnerList'] =
          this.labPatnerList!.map((v) => v.toJson()).toList();
    }
    data['title7'] = this.title7;
    data['title8'] = this.title8;
    if (this.cartData != null) {
      data['cart_data'] = this.cartData!.toJson();
    }
    data['cityName'] = this.cityName;
    data['cityFlag'] = this.cityFlag;
    return data;
  }
}
class GetLabSlideImages {
  int? labSliderId;
  String? labSliderImage;
  String? labSliderPageType;
  int? labSliderMainId;
  String? labSliderStatus;

  GetLabSlideImages(
      {this.labSliderId,
      this.labSliderImage,
      this.labSliderPageType,
      this.labSliderMainId,
      this.labSliderStatus});

  GetLabSlideImages.fromJson(Map<String, dynamic> json) {
    labSliderId = json['lab_slider_id'];
    labSliderImage = json['lab_slider_image'];
    labSliderPageType = json['lab_slider_page_type'];
    labSliderMainId = json['lab_slider_main_id'];
    labSliderStatus = json['lab_slider_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_slider_id'] = this.labSliderId;
    data['lab_slider_image'] = this.labSliderImage;
    data['lab_slider_page_type'] = this.labSliderPageType;
    data['lab_slider_main_id'] = this.labSliderMainId;
    data['lab_slider_status'] = this.labSliderStatus;
    return data;
  }
}

class OrganTestCategoryList {
  int? labCategoryId;
  String? lcCategoryName;
  String? lcCategoryAddedBy;
  String? lcCategoryImage;
  String? lcCategoryDesc;
  String? labCategoryType;
  int? lcStatus;

  OrganTestCategoryList(
      {this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcCategoryDesc,
      this.labCategoryType,
      this.lcStatus});

  OrganTestCategoryList.fromJson(Map<String, dynamic> json) {
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcCategoryDesc = json['lc_category_desc'];
    labCategoryType = json['lab_category_type'];
    lcStatus = json['lc_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_category_desc'] = this.lcCategoryDesc;
    data['lab_category_type'] = this.labCategoryType;
    data['lc_status'] = this.lcStatus;
    return data;
  }
}

class RadiologyCategoryList {
  int? labCategoryId;
  String? lcCategoryName;
  String? lcCategoryAddedBy;
  String? lcCategoryImage;
  String? lcCategoryDesc;
  String? labCategoryType;
  int? lcStatus;

  RadiologyCategoryList(
      {this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcCategoryDesc,
      this.labCategoryType,
      this.lcStatus});

  RadiologyCategoryList.fromJson(Map<String, dynamic> json) {
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcCategoryDesc = json['lc_category_desc'];
    labCategoryType = json['lab_category_type'];
    lcStatus = json['lc_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_category_desc'] = this.lcCategoryDesc;
    data['lab_category_type'] = this.labCategoryType;
    data['lc_status'] = this.lcStatus;
    return data;
  }
}

class PathologyTestCategoryList {
  int? labCategoryId;
  String? lcCategoryName;
  String? lcCategoryAddedBy;
  String? lcCategoryImage;
  String? lcCategoryDesc;
  String? labCategoryType;
  int? lcStatus;
  String? categoryAddedDate;

  PathologyTestCategoryList(
      {this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcCategoryDesc,
      this.labCategoryType,
      this.lcStatus,
      this.categoryAddedDate});

  PathologyTestCategoryList.fromJson(Map<String, dynamic> json) {
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcCategoryDesc = json['lc_category_desc'];
    labCategoryType = json['lab_category_type'];
    lcStatus = json['lc_status'];
    categoryAddedDate = json['category_added_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_category_desc'] = this.lcCategoryDesc;
    data['lab_category_type'] = this.labCategoryType;
    data['lc_status'] = this.lcStatus;
    data['category_added_date'] = this.categoryAddedDate;
    return data;
  }
}

class BannerData {
  String? image;
  String? bannerTitle;

  BannerData({this.image, this.bannerTitle});

  BannerData.fromJson(Map<String, dynamic> json) {
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

class LabPatnerList {
  String? image;

  LabPatnerList({this.image});

  LabPatnerList.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    return data;
  }
}

class CartData {
  int? totalItem;
  String? totalPrice;
  String? couponDiscount;
  String? totalOfferedPrice;

  CartData(
      {this.totalItem,
      this.totalPrice,
      this.couponDiscount,
      this.totalOfferedPrice});

  CartData.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
    totalPrice = json['total_price'];
    couponDiscount = json['coupon_discount'];
    totalOfferedPrice = json['total_offered_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_item'] = this.totalItem;
    data['total_price'] = this.totalPrice;
    data['coupon_discount'] = this.couponDiscount;
    data['total_offered_price'] = this.totalOfferedPrice;
    return data;
  }
}
