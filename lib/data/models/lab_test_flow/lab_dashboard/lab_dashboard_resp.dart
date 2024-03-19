class LabDashBoardResp {
  String? result;
  String? status;
  String? message;
  JSONData? jSONData;

  LabDashBoardResp({this.result, this.status, this.message, this.jSONData});

  LabDashBoardResp.fromJson(Map<String, dynamic> json) {
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
  List<HealthCheckup>? healthCheckup;
  String? title3;
  List<TestCategoryList>? testCategoryList;
  String? title4;
  List<FeaturedLabList>? featuredLabList;
  String? title5;
  List<PathologyTestList>? pathologyTestList;
  String? title6;
  List<RadiologyTestList>? radiologyTestList;
  String? title7;
  List<FullBodyCheckUp>? fullBodyCheckUp;
  String? title8;
  CartData? cartData;

  JSONData(
      {this.title1,
      this.getLabSlideImages,
      this.title2,
      this.healthCheckup,
      this.title3,
      this.testCategoryList,
      this.title4,
      this.featuredLabList,
      this.title5,
      this.pathologyTestList,
      this.title6,
      this.radiologyTestList,
      this.title7,
      this.fullBodyCheckUp,
      this.title8,
      this.cartData});

  JSONData.fromJson(Map<String, dynamic> json) {
    title1 = json['title1'];
    if (json['get_lab_slide_images'] != null) {
      getLabSlideImages = <GetLabSlideImages>[];
      json['get_lab_slide_images'].forEach((v) {
        getLabSlideImages!.add(new GetLabSlideImages.fromJson(v));
      });
    }
    title2 = json['title2'];
    if (json['health_checkup'] != null) {
      healthCheckup = <HealthCheckup>[];
      json['health_checkup'].forEach((v) {
        healthCheckup!.add(new HealthCheckup.fromJson(v));
      });
    }
    title3 = json['title3'];
    if (json['test_category_list'] != null) {
      testCategoryList = <TestCategoryList>[];
      json['test_category_list'].forEach((v) {
        testCategoryList!.add(new TestCategoryList.fromJson(v));
      });
    }
    title4 = json['title4'];
    if (json['featured_lab_list'] != null) {
      featuredLabList = <FeaturedLabList>[];
      json['featured_lab_list'].forEach((v) {
        featuredLabList!.add(new FeaturedLabList.fromJson(v));
      });
    }
    title5 = json['title5'];
    if (json['pathology_test_list'] != null) {
      pathologyTestList = <PathologyTestList>[];
      json['pathology_test_list'].forEach((v) {
        pathologyTestList!.add(new PathologyTestList.fromJson(v));
      });
    }
    title6 = json['title6'];
    if (json['radiology_test_list'] != null) {
      radiologyTestList = <RadiologyTestList>[];
      json['radiology_test_list'].forEach((v) {
        radiologyTestList!.add(new RadiologyTestList.fromJson(v));
      });
    }
    title7 = json['title7'];
    if (json['full_body_check_up'] != null) {
      fullBodyCheckUp = <FullBodyCheckUp>[];
      json['full_body_check_up'].forEach((v) {
        fullBodyCheckUp!.add(new FullBodyCheckUp.fromJson(v));
      });
    }
    title8 = json['title8'];
    cartData = json['cart_data'] != null
        ? new CartData.fromJson(json['cart_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title1'] = this.title1;
    if (this.getLabSlideImages != null) {
      data['get_lab_slide_images'] =
          this.getLabSlideImages!.map((v) => v.toJson()).toList();
    }
    data['title2'] = this.title2;
    if (this.healthCheckup != null) {
      data['health_checkup'] =
          this.healthCheckup!.map((v) => v.toJson()).toList();
    }
    data['title3'] = this.title3;
    if (this.testCategoryList != null) {
      data['test_category_list'] =
          this.testCategoryList!.map((v) => v.toJson()).toList();
    }
    data['title4'] = this.title4;
    if (this.featuredLabList != null) {
      data['featured_lab_list'] =
          this.featuredLabList!.map((v) => v.toJson()).toList();
    }
    data['title5'] = this.title5;
    if (this.pathologyTestList != null) {
      data['pathology_test_list'] =
          this.pathologyTestList!.map((v) => v.toJson()).toList();
    }
    data['title6'] = this.title6;
    if (this.radiologyTestList != null) {
      data['radiology_test_list'] =
          this.radiologyTestList!.map((v) => v.toJson()).toList();
    }
    data['title7'] = this.title7;
    if (this.fullBodyCheckUp != null) {
      data['full_body_check_up'] =
          this.fullBodyCheckUp!.map((v) => v.toJson()).toList();
    }
    data['title8'] = this.title8;
    if (this.cartData != null) {
      data['cart_data'] = this.cartData!.toJson();
    }
    return data;
  }
}

class GetLabSlideImages {
  int? isId;
  String? isImagePath;
  String? isCat;
  String? isSubCat;
  String? isSubSubCat;
  String? isSliderType;
  int? isStatus;

  GetLabSlideImages(
      {this.isId,
      this.isImagePath,
      this.isCat,
      this.isSubCat,
      this.isSubSubCat,
      this.isSliderType,
      this.isStatus});

  GetLabSlideImages.fromJson(Map<String, dynamic> json) {
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

class HealthCheckup {
  int? labTestId;
  String? ltLabId;
  String? ltTestName;
  String? ltOverview;
  String? ltTestInterpetation;
  String? ltPatientConcerns;
  String? ltPrecautions;
  String? ltTestIncludes;
  String? ltLabTestType;
  String? ltPoweredBy;
  String? ltCategory;
  int? ltStatus;
  String? ltLabTestRating;
  String? ltIncludeTest;
  String? ltExpireInMonth;
  int? labCategoryId;
  String? lcCategoryName;
  String? lcCategoryAddedBy;
  String? lcCategoryImage;
  int? lcStatus;
  int? labTestPoweredById;
  String? ltpyName;
  String? ltpyLogo;
  String? ltpyDesc;
  int? ltpyStatus;
  int? labTestPricesId;
  String? ltpLabId;
  String? ltpTestId;
  String? ltPrice;
  String? ltOfferPrice;
  int? ltpStatus;
  int? labId;
  String? labType;
  String? labName;
  String? labEReportByDays;
  String? labEReportByDaysEgTxt;
  String? labDetails;
  String? labImage;
  String? labLat;
  String? labLong;
  String? labAddress;
  String? labPincode;
  String? labCity;
  String? labCountry;
  String? labAddedDate;
  String? labRating;
  int? labStatus;

  HealthCheckup(
      {this.labTestId,
      this.ltLabId,
      this.ltTestName,
      this.ltOverview,
      this.ltTestInterpetation,
      this.ltPatientConcerns,
      this.ltPrecautions,
      this.ltTestIncludes,
      this.ltLabTestType,
      this.ltPoweredBy,
      this.ltCategory,
      this.ltStatus,
      this.ltLabTestRating,
      this.ltIncludeTest,
      this.ltExpireInMonth,
      this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcStatus,
      this.labTestPoweredById,
      this.ltpyName,
      this.ltpyLogo,
      this.ltpyDesc,
      this.ltpyStatus,
      this.labTestPricesId,
      this.ltpLabId,
      this.ltpTestId,
      this.ltPrice,
      this.ltOfferPrice,
      this.ltpStatus,
      this.labId,
      this.labType,
      this.labName,
      this.labEReportByDays,
      this.labEReportByDaysEgTxt,
      this.labDetails,
      this.labImage,
      this.labLat,
      this.labLong,
      this.labAddress,
      this.labPincode,
      this.labCity,
      this.labCountry,
      this.labAddedDate,
      this.labRating,
      this.labStatus});

  HealthCheckup.fromJson(Map<String, dynamic> json) {
    labTestId = json['lab_test_id'];
    ltLabId = json['lt_lab_id'];
    ltTestName = json['lt_test_name'];
    ltOverview = json['lt_overview'];
    ltTestInterpetation = json['lt_test_interpetation'];
    ltPatientConcerns = json['lt_patient_concerns'];
    ltPrecautions = json['lt_precautions'];
    ltTestIncludes = json['lt_test_includes'];
    ltLabTestType = json['lt_lab_test_type'];
    ltPoweredBy = json['lt_powered_by'];
    ltCategory = json['lt_category'];
    ltStatus = json['lt_status'];
    ltLabTestRating = json['lt_lab_test_rating'];
    ltIncludeTest = json['lt_include_test'];
    ltExpireInMonth = json['lt_expire_in_month'];
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcStatus = json['lc_status'];
    labTestPoweredById = json['lab_test_powered_by_id'];
    ltpyName = json['ltpy_name'];
    ltpyLogo = json['ltpy_logo'];
    ltpyDesc = json['ltpy_desc'];
    ltpyStatus = json['ltpy_status'];
    labTestPricesId = json['lab_test_prices_id'];
    ltpLabId = json['ltp_lab_id'];
    ltpTestId = json['ltp_test_id'];
    ltPrice = json['lt_price'];
    ltOfferPrice = json['lt_offer_price'];
    ltpStatus = json['ltp_status'];
    labId = json['lab_id'];
    labType = json['lab_type'];
    labName = json['lab_name'];
    labEReportByDays = json['lab_e_report_by_days'];
    labEReportByDaysEgTxt = json['lab_e_report_by_days_eg_txt'];
    labDetails = json['lab_details'];
    labImage = json['lab_image'];
    labLat = json['lab_lat'];
    labLong = json['lab_long'];
    labAddress = json['lab_address'];
    labPincode = json['lab_pincode'];
    labCity = json['lab_city'];
    labCountry = json['lab_country'];
    labAddedDate = json['lab_added_date'];
    labRating = json['lab_rating'];
    labStatus = json['lab_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_test_id'] = this.labTestId;
    data['lt_lab_id'] = this.ltLabId;
    data['lt_test_name'] = this.ltTestName;
    data['lt_overview'] = this.ltOverview;
    data['lt_test_interpetation'] = this.ltTestInterpetation;
    data['lt_patient_concerns'] = this.ltPatientConcerns;
    data['lt_precautions'] = this.ltPrecautions;
    data['lt_test_includes'] = this.ltTestIncludes;
    data['lt_lab_test_type'] = this.ltLabTestType;
    data['lt_powered_by'] = this.ltPoweredBy;
    data['lt_category'] = this.ltCategory;
    data['lt_status'] = this.ltStatus;
    data['lt_lab_test_rating'] = this.ltLabTestRating;
    data['lt_include_test'] = this.ltIncludeTest;
    data['lt_expire_in_month'] = this.ltExpireInMonth;
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_status'] = this.lcStatus;
    data['lab_test_powered_by_id'] = this.labTestPoweredById;
    data['ltpy_name'] = this.ltpyName;
    data['ltpy_logo'] = this.ltpyLogo;
    data['ltpy_desc'] = this.ltpyDesc;
    data['ltpy_status'] = this.ltpyStatus;
    data['lab_test_prices_id'] = this.labTestPricesId;
    data['ltp_lab_id'] = this.ltpLabId;
    data['ltp_test_id'] = this.ltpTestId;
    data['lt_price'] = this.ltPrice;
    data['lt_offer_price'] = this.ltOfferPrice;
    data['ltp_status'] = this.ltpStatus;
    data['lab_id'] = this.labId;
    data['lab_type'] = this.labType;
    data['lab_name'] = this.labName;
    data['lab_e_report_by_days'] = this.labEReportByDays;
    data['lab_e_report_by_days_eg_txt'] = this.labEReportByDaysEgTxt;
    data['lab_details'] = this.labDetails;
    data['lab_image'] = this.labImage;
    data['lab_lat'] = this.labLat;
    data['lab_long'] = this.labLong;
    data['lab_address'] = this.labAddress;
    data['lab_pincode'] = this.labPincode;
    data['lab_city'] = this.labCity;
    data['lab_country'] = this.labCountry;
    data['lab_added_date'] = this.labAddedDate;
    data['lab_rating'] = this.labRating;
    data['lab_status'] = this.labStatus;
    return data;
  }
}

class TestCategoryList {
  int? labCategoryId;
  String? lcCategoryName;
  String? lcCategoryAddedBy;
  String? lcCategoryImage;
  int? lcStatus;

  TestCategoryList(
      {this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcStatus});

  TestCategoryList.fromJson(Map<String, dynamic> json) {
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcStatus = json['lc_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_status'] = this.lcStatus;
    return data;
  }
}

class FeaturedLabList {
  int? labId;
  String? labType;
  String? labName;
  String? labEReportByDays;
  String? labEReportByDaysEgTxt;
  String? labDetails;
  String? labImage;
  String? labLat;
  String? labLong;
  String? labAddress;
  String? labPincode;
  String? labCity;
  String? labCountry;
  String? labAddedDate;
  String? labRating;
  int? labStatus;

  FeaturedLabList(
      {this.labId,
      this.labType,
      this.labName,
      this.labEReportByDays,
      this.labEReportByDaysEgTxt,
      this.labDetails,
      this.labImage,
      this.labLat,
      this.labLong,
      this.labAddress,
      this.labPincode,
      this.labCity,
      this.labCountry,
      this.labAddedDate,
      this.labRating,
      this.labStatus});

  FeaturedLabList.fromJson(Map<String, dynamic> json) {
    labId = json['lab_id'];
    labType = json['lab_type'];
    labName = json['lab_name'];
    labEReportByDays = json['lab_e_report_by_days'];
    labEReportByDaysEgTxt = json['lab_e_report_by_days_eg_txt'];
    labDetails = json['lab_details'];
    labImage = json['lab_image'];
    labLat = json['lab_lat'];
    labLong = json['lab_long'];
    labAddress = json['lab_address'];
    labPincode = json['lab_pincode'];
    labCity = json['lab_city'];
    labCountry = json['lab_country'];
    labAddedDate = json['lab_added_date'];
    labRating = json['lab_rating'];
    labStatus = json['lab_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_id'] = this.labId;
    data['lab_type'] = this.labType;
    data['lab_name'] = this.labName;
    data['lab_e_report_by_days'] = this.labEReportByDays;
    data['lab_e_report_by_days_eg_txt'] = this.labEReportByDaysEgTxt;
    data['lab_details'] = this.labDetails;
    data['lab_image'] = this.labImage;
    data['lab_lat'] = this.labLat;
    data['lab_long'] = this.labLong;
    data['lab_address'] = this.labAddress;
    data['lab_pincode'] = this.labPincode;
    data['lab_city'] = this.labCity;
    data['lab_country'] = this.labCountry;
    data['lab_added_date'] = this.labAddedDate;
    data['lab_rating'] = this.labRating;
    data['lab_status'] = this.labStatus;
    return data;
  }
}

class PathologyTestList {
  int? labTestId;
  String? ltLabId;
  String? ltTestName;
  String? ltOverview;
  String? ltTestInterpetation;
  String? ltPatientConcerns;
  String? ltPrecautions;
  String? ltTestIncludes;
  String? ltLabTestType;
  String? ltPoweredBy;
  String? ltCategory;
  int? ltStatus;
  String? ltLabTestRating;
  String? ltIncludeTest;
  String? ltExpireInMonth;
  int? labCategoryId;
  String? lcCategoryName;
  String? lcCategoryAddedBy;
  String? lcCategoryImage;
  int? lcStatus;
  int? labTestPricesId;
  String? ltpLabId;
  String? ltpTestId;
  String? ltPrice;
  String? ltOfferPrice;
  int? ltpStatus;
  int? labId;
  String? labType;
  String? labName;
  String? labEReportByDays;
  String? labEReportByDaysEgTxt;
  String? labDetails;
  String? labImage;
  String? labLat;
  String? labLong;
  String? labAddress;
  String? labPincode;
  String? labCity;
  String? labCountry;
  String? labAddedDate;
  String? labRating;
  int? labStatus;

  PathologyTestList(
      {this.labTestId,
      this.ltLabId,
      this.ltTestName,
      this.ltOverview,
      this.ltTestInterpetation,
      this.ltPatientConcerns,
      this.ltPrecautions,
      this.ltTestIncludes,
      this.ltLabTestType,
      this.ltPoweredBy,
      this.ltCategory,
      this.ltStatus,
      this.ltLabTestRating,
      this.ltIncludeTest,
      this.ltExpireInMonth,
      this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcStatus,
      this.labTestPricesId,
      this.ltpLabId,
      this.ltpTestId,
      this.ltPrice,
      this.ltOfferPrice,
      this.ltpStatus,
      this.labId,
      this.labType,
      this.labName,
      this.labEReportByDays,
      this.labEReportByDaysEgTxt,
      this.labDetails,
      this.labImage,
      this.labLat,
      this.labLong,
      this.labAddress,
      this.labPincode,
      this.labCity,
      this.labCountry,
      this.labAddedDate,
      this.labRating,
      this.labStatus});

  PathologyTestList.fromJson(Map<String, dynamic> json) {
    labTestId = json['lab_test_id'];
    ltLabId = json['lt_lab_id'];
    ltTestName = json['lt_test_name'];
    ltOverview = json['lt_overview'];
    ltTestInterpetation = json['lt_test_interpetation'];
    ltPatientConcerns = json['lt_patient_concerns'];
    ltPrecautions = json['lt_precautions'];
    ltTestIncludes = json['lt_test_includes'];
    ltLabTestType = json['lt_lab_test_type'];
    ltPoweredBy = json['lt_powered_by'];
    ltCategory = json['lt_category'];
    ltStatus = json['lt_status'];
    ltLabTestRating = json['lt_lab_test_rating'];
    ltIncludeTest = json['lt_include_test'];
    ltExpireInMonth = json['lt_expire_in_month'];
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcStatus = json['lc_status'];
    labTestPricesId = json['lab_test_prices_id'];
    ltpLabId = json['ltp_lab_id'];
    ltpTestId = json['ltp_test_id'];
    ltPrice = json['lt_price'];
    ltOfferPrice = json['lt_offer_price'];
    ltpStatus = json['ltp_status'];
    labId = json['lab_id'];
    labType = json['lab_type'];
    labName = json['lab_name'];
    labEReportByDays = json['lab_e_report_by_days'];
    labEReportByDaysEgTxt = json['lab_e_report_by_days_eg_txt'];
    labDetails = json['lab_details'];
    labImage = json['lab_image'];
    labLat = json['lab_lat'];
    labLong = json['lab_long'];
    labAddress = json['lab_address'];
    labPincode = json['lab_pincode'];
    labCity = json['lab_city'];
    labCountry = json['lab_country'];
    labAddedDate = json['lab_added_date'];
    labRating = json['lab_rating'];
    labStatus = json['lab_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_test_id'] = this.labTestId;
    data['lt_lab_id'] = this.ltLabId;
    data['lt_test_name'] = this.ltTestName;
    data['lt_overview'] = this.ltOverview;
    data['lt_test_interpetation'] = this.ltTestInterpetation;
    data['lt_patient_concerns'] = this.ltPatientConcerns;
    data['lt_precautions'] = this.ltPrecautions;
    data['lt_test_includes'] = this.ltTestIncludes;
    data['lt_lab_test_type'] = this.ltLabTestType;
    data['lt_powered_by'] = this.ltPoweredBy;
    data['lt_category'] = this.ltCategory;
    data['lt_status'] = this.ltStatus;
    data['lt_lab_test_rating'] = this.ltLabTestRating;
    data['lt_include_test'] = this.ltIncludeTest;
    data['lt_expire_in_month'] = this.ltExpireInMonth;
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_status'] = this.lcStatus;
    data['lab_test_prices_id'] = this.labTestPricesId;
    data['ltp_lab_id'] = this.ltpLabId;
    data['ltp_test_id'] = this.ltpTestId;
    data['lt_price'] = this.ltPrice;
    data['lt_offer_price'] = this.ltOfferPrice;
    data['ltp_status'] = this.ltpStatus;
    data['lab_id'] = this.labId;
    data['lab_type'] = this.labType;
    data['lab_name'] = this.labName;
    data['lab_e_report_by_days'] = this.labEReportByDays;
    data['lab_e_report_by_days_eg_txt'] = this.labEReportByDaysEgTxt;
    data['lab_details'] = this.labDetails;
    data['lab_image'] = this.labImage;
    data['lab_lat'] = this.labLat;
    data['lab_long'] = this.labLong;
    data['lab_address'] = this.labAddress;
    data['lab_pincode'] = this.labPincode;
    data['lab_city'] = this.labCity;
    data['lab_country'] = this.labCountry;
    data['lab_added_date'] = this.labAddedDate;
    data['lab_rating'] = this.labRating;
    data['lab_status'] = this.labStatus;
    return data;
  }
}

class FullBodyCheckUp {
  int? labTestId;
  String? ltLabId;
  String? ltTestName;
  String? ltOverview;
  String? ltTestInterpetation;
  String? ltPatientConcerns;
  String? ltPrecautions;
  String? ltTestIncludes;
  String? ltLabTestType;
  String? ltPoweredBy;
  String? ltCategory;
  int? ltStatus;
  String? ltLabTestRating;
  String? ltIncludeTest;
  String? ltExpireInMonth;
  int? labCategoryId;
  String? lcCategoryName;
  String? lcCategoryAddedBy;
  String? lcCategoryImage;
  int? lcStatus;
  int? labTestPricesId;
  String? ltpLabId;
  String? ltpTestId;
  String? ltPrice;
  String? ltOfferPrice;
  int? ltpStatus;
  int? labId;
  String? labType;
  String? labName;
  String? labEReportByDays;
  String? labEReportByDaysEgTxt;
  String? labDetails;
  String? labImage;
  String? labLat;
  String? labLong;
  String? labAddress;
  String? labPincode;
  String? labCity;
  String? labCountry;
  String? labAddedDate;
  String? labRating;
  int? labStatus;

  FullBodyCheckUp(
      {this.labTestId,
      this.ltLabId,
      this.ltTestName,
      this.ltOverview,
      this.ltTestInterpetation,
      this.ltPatientConcerns,
      this.ltPrecautions,
      this.ltTestIncludes,
      this.ltLabTestType,
      this.ltPoweredBy,
      this.ltCategory,
      this.ltStatus,
      this.ltLabTestRating,
      this.ltIncludeTest,
      this.ltExpireInMonth,
      this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcStatus,
      this.labTestPricesId,
      this.ltpLabId,
      this.ltpTestId,
      this.ltPrice,
      this.ltOfferPrice,
      this.ltpStatus,
      this.labId,
      this.labType,
      this.labName,
      this.labEReportByDays,
      this.labEReportByDaysEgTxt,
      this.labDetails,
      this.labImage,
      this.labLat,
      this.labLong,
      this.labAddress,
      this.labPincode,
      this.labCity,
      this.labCountry,
      this.labAddedDate,
      this.labRating,
      this.labStatus});

  FullBodyCheckUp.fromJson(Map<String, dynamic> json) {
    labTestId = json['lab_test_id'];
    ltLabId = json['lt_lab_id'];
    ltTestName = json['lt_test_name'];
    ltOverview = json['lt_overview'];
    ltTestInterpetation = json['lt_test_interpetation'];
    ltPatientConcerns = json['lt_patient_concerns'];
    ltPrecautions = json['lt_precautions'];
    ltTestIncludes = json['lt_test_includes'];
    ltLabTestType = json['lt_lab_test_type'];
    ltPoweredBy = json['lt_powered_by'];
    ltCategory = json['lt_category'];
    ltStatus = json['lt_status'];
    ltLabTestRating = json['lt_lab_test_rating'];
    ltIncludeTest = json['lt_include_test'];
    ltExpireInMonth = json['lt_expire_in_month'];
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcStatus = json['lc_status'];
    labTestPricesId = json['lab_test_prices_id'];
    ltpLabId = json['ltp_lab_id'];
    ltpTestId = json['ltp_test_id'];
    ltPrice = json['lt_price'];
    ltOfferPrice = json['lt_offer_price'];
    ltpStatus = json['ltp_status'];
    labId = json['lab_id'];
    labType = json['lab_type'];
    labName = json['lab_name'];
    labEReportByDays = json['lab_e_report_by_days'];
    labEReportByDaysEgTxt = json['lab_e_report_by_days_eg_txt'];
    labDetails = json['lab_details'];
    labImage = json['lab_image'];
    labLat = json['lab_lat'];
    labLong = json['lab_long'];
    labAddress = json['lab_address'];
    labPincode = json['lab_pincode'];
    labCity = json['lab_city'];
    labCountry = json['lab_country'];
    labAddedDate = json['lab_added_date'];
    labRating = json['lab_rating'];
    labStatus = json['lab_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_test_id'] = this.labTestId;
    data['lt_lab_id'] = this.ltLabId;
    data['lt_test_name'] = this.ltTestName;
    data['lt_overview'] = this.ltOverview;
    data['lt_test_interpetation'] = this.ltTestInterpetation;
    data['lt_patient_concerns'] = this.ltPatientConcerns;
    data['lt_precautions'] = this.ltPrecautions;
    data['lt_test_includes'] = this.ltTestIncludes;
    data['lt_lab_test_type'] = this.ltLabTestType;
    data['lt_powered_by'] = this.ltPoweredBy;
    data['lt_category'] = this.ltCategory;
    data['lt_status'] = this.ltStatus;
    data['lt_lab_test_rating'] = this.ltLabTestRating;
    data['lt_include_test'] = this.ltIncludeTest;
    data['lt_expire_in_month'] = this.ltExpireInMonth;
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_status'] = this.lcStatus;
    data['lab_test_prices_id'] = this.labTestPricesId;
    data['ltp_lab_id'] = this.ltpLabId;
    data['ltp_test_id'] = this.ltpTestId;
    data['lt_price'] = this.ltPrice;
    data['lt_offer_price'] = this.ltOfferPrice;
    data['ltp_status'] = this.ltpStatus;
    data['lab_id'] = this.labId;
    data['lab_type'] = this.labType;
    data['lab_name'] = this.labName;
    data['lab_e_report_by_days'] = this.labEReportByDays;
    data['lab_e_report_by_days_eg_txt'] = this.labEReportByDaysEgTxt;
    data['lab_details'] = this.labDetails;
    data['lab_image'] = this.labImage;
    data['lab_lat'] = this.labLat;
    data['lab_long'] = this.labLong;
    data['lab_address'] = this.labAddress;
    data['lab_pincode'] = this.labPincode;
    data['lab_city'] = this.labCity;
    data['lab_country'] = this.labCountry;
    data['lab_added_date'] = this.labAddedDate;
    data['lab_rating'] = this.labRating;
    data['lab_status'] = this.labStatus;
    return data;
  }
}

class RadiologyTestList {
  int? labTestId;
  String? ltLabId;
  String? ltTestName;
  String? ltOverview;
  String? ltTestInterpetation;
  String? ltPatientConcerns;
  String? ltPrecautions;
  String? ltTestIncludes;
  String? ltLabTestType;
  String? ltPoweredBy;
  String? ltCategory;
  int? ltStatus;
  String? ltLabTestRating;
  String? ltIncludeTest;
  String? ltExpireInMonth;
  int? labCategoryId;
  String? lcCategoryName;
  String? lcCategoryAddedBy;
  String? lcCategoryImage;
  int? lcStatus;
  int? labTestPricesId;
  String? ltpLabId;
  String? ltpTestId;
  String? ltPrice;
  String? ltOfferPrice;
  int? ltpStatus;
  int? labId;
  String? labType;
  String? labName;
  String? labEReportByDays;
  String? labEReportByDaysEgTxt;
  String? labDetails;
  String? labImage;
  String? labLat;
  String? labLong;
  String? labAddress;
  String? labPincode;
  String? labCity;
  String? labCountry;
  String? labAddedDate;
  String? labRating;
  int? labStatus;

  RadiologyTestList(
      {this.labTestId,
      this.ltLabId,
      this.ltTestName,
      this.ltOverview,
      this.ltTestInterpetation,
      this.ltPatientConcerns,
      this.ltPrecautions,
      this.ltTestIncludes,
      this.ltLabTestType,
      this.ltPoweredBy,
      this.ltCategory,
      this.ltStatus,
      this.ltLabTestRating,
      this.ltIncludeTest,
      this.ltExpireInMonth,
      this.labCategoryId,
      this.lcCategoryName,
      this.lcCategoryAddedBy,
      this.lcCategoryImage,
      this.lcStatus,
      this.labTestPricesId,
      this.ltpLabId,
      this.ltpTestId,
      this.ltPrice,
      this.ltOfferPrice,
      this.ltpStatus,
      this.labId,
      this.labType,
      this.labName,
      this.labEReportByDays,
      this.labEReportByDaysEgTxt,
      this.labDetails,
      this.labImage,
      this.labLat,
      this.labLong,
      this.labAddress,
      this.labPincode,
      this.labCity,
      this.labCountry,
      this.labAddedDate,
      this.labRating,
      this.labStatus});

  RadiologyTestList.fromJson(Map<String, dynamic> json) {
    labTestId = json['lab_test_id'];
    ltLabId = json['lt_lab_id'];
    ltTestName = json['lt_test_name'];
    ltOverview = json['lt_overview'];
    ltTestInterpetation = json['lt_test_interpetation'];
    ltPatientConcerns = json['lt_patient_concerns'];
    ltPrecautions = json['lt_precautions'];
    ltTestIncludes = json['lt_test_includes'];
    ltLabTestType = json['lt_lab_test_type'];
    ltPoweredBy = json['lt_powered_by'];
    ltCategory = json['lt_category'];
    ltStatus = json['lt_status'];
    ltLabTestRating = json['lt_lab_test_rating'];
    ltIncludeTest = json['lt_include_test'];
    ltExpireInMonth = json['lt_expire_in_month'];
    labCategoryId = json['lab_category_id'];
    lcCategoryName = json['lc_category_name'];
    lcCategoryAddedBy = json['lc_category_added_by'];
    lcCategoryImage = json['lc_category_image'];
    lcStatus = json['lc_status'];
    labTestPricesId = json['lab_test_prices_id'];
    ltpLabId = json['ltp_lab_id'];
    ltpTestId = json['ltp_test_id'];
    ltPrice = json['lt_price'];
    ltOfferPrice = json['lt_offer_price'];
    ltpStatus = json['ltp_status'];
    labId = json['lab_id'];
    labType = json['lab_type'];
    labName = json['lab_name'];
    labEReportByDays = json['lab_e_report_by_days'];
    labEReportByDaysEgTxt = json['lab_e_report_by_days_eg_txt'];
    labDetails = json['lab_details'];
    labImage = json['lab_image'];
    labLat = json['lab_lat'];
    labLong = json['lab_long'];
    labAddress = json['lab_address'];
    labPincode = json['lab_pincode'];
    labCity = json['lab_city'];
    labCountry = json['lab_country'];
    labAddedDate = json['lab_added_date'];
    labRating = json['lab_rating'];
    labStatus = json['lab_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lab_test_id'] = this.labTestId;
    data['lt_lab_id'] = this.ltLabId;
    data['lt_test_name'] = this.ltTestName;
    data['lt_overview'] = this.ltOverview;
    data['lt_test_interpetation'] = this.ltTestInterpetation;
    data['lt_patient_concerns'] = this.ltPatientConcerns;
    data['lt_precautions'] = this.ltPrecautions;
    data['lt_test_includes'] = this.ltTestIncludes;
    data['lt_lab_test_type'] = this.ltLabTestType;
    data['lt_powered_by'] = this.ltPoweredBy;
    data['lt_category'] = this.ltCategory;
    data['lt_status'] = this.ltStatus;
    data['lt_lab_test_rating'] = this.ltLabTestRating;
    data['lt_include_test'] = this.ltIncludeTest;
    data['lt_expire_in_month'] = this.ltExpireInMonth;
    data['lab_category_id'] = this.labCategoryId;
    data['lc_category_name'] = this.lcCategoryName;
    data['lc_category_added_by'] = this.lcCategoryAddedBy;
    data['lc_category_image'] = this.lcCategoryImage;
    data['lc_status'] = this.lcStatus;
    data['lab_test_prices_id'] = this.labTestPricesId;
    data['ltp_lab_id'] = this.ltpLabId;
    data['ltp_test_id'] = this.ltpTestId;
    data['lt_price'] = this.ltPrice;
    data['lt_offer_price'] = this.ltOfferPrice;
    data['ltp_status'] = this.ltpStatus;
    data['lab_id'] = this.labId;
    data['lab_type'] = this.labType;
    data['lab_name'] = this.labName;
    data['lab_e_report_by_days'] = this.labEReportByDays;
    data['lab_e_report_by_days_eg_txt'] = this.labEReportByDaysEgTxt;
    data['lab_details'] = this.labDetails;
    data['lab_image'] = this.labImage;
    data['lab_lat'] = this.labLat;
    data['lab_long'] = this.labLong;
    data['lab_address'] = this.labAddress;
    data['lab_pincode'] = this.labPincode;
    data['lab_city'] = this.labCity;
    data['lab_country'] = this.labCountry;
    data['lab_added_date'] = this.labAddedDate;
    data['lab_rating'] = this.labRating;
    data['lab_status'] = this.labStatus;
    return data;
  }
}

class CartData {
  String? totalItem;
  String? totalPrice;
  String? totalOfferedPrice;
  String? currencySymbol;
  String? countMsg;

  CartData(
      {this.totalItem,
      this.totalPrice,
      this.totalOfferedPrice,
      this.currencySymbol,
      this.countMsg});

  CartData.fromJson(Map<String, dynamic> json) {
    totalItem = json['total_item'];
    totalPrice = json['total_price'];
    totalOfferedPrice = json['total_offered_price'];
    currencySymbol = json['currencySymbol'];
    countMsg = json['count_msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_item'] = this.totalItem;
    data['total_price'] = this.totalPrice;
    data['total_offered_price'] = this.totalOfferedPrice;
    data['currencySymbol'] = this.currencySymbol;
    data['count_msg'] = this.countMsg;
    return data;
  }
}
