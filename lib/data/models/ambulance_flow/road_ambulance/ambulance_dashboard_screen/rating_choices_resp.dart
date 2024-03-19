class RatingChoicesResp {
  String? result;
  String? status;
  String? message;
  List<JSONData>? jSONData;

  RatingChoicesResp({this.result, this.status, this.message, this.jSONData});

  RatingChoicesResp.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    message = json['message'];
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
    data['message'] = this.message;
    if (this.jSONData != null) {
      data['JSONData'] = this.jSONData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class JSONData {
  List<BookingRatingTextToConsumerToDriver>?
  bookingRatingTextToConsumerToDriver;
  List<DriverData>? driverData;

  JSONData({this.bookingRatingTextToConsumerToDriver, this.driverData});

  JSONData.fromJson(Map<String, dynamic> json) {
    if (json['booking_rating_text_to_consumer_to_driver'] != null) {
      bookingRatingTextToConsumerToDriver =
      <BookingRatingTextToConsumerToDriver>[];
      json['booking_rating_text_to_consumer_to_driver'].forEach((v) {
        bookingRatingTextToConsumerToDriver!
            .add(new BookingRatingTextToConsumerToDriver.fromJson(v));
      });
    }
    if (json['driver_data'] != null) {
      driverData = <DriverData>[];
      json['driver_data'].forEach((v) {
        driverData!.add(new DriverData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bookingRatingTextToConsumerToDriver != null) {
      data['booking_rating_text_to_consumer_to_driver'] = this
          .bookingRatingTextToConsumerToDriver!
          .map((v) => v.toJson())
          .toList();
    }
    if (this.driverData != null) {
      data['driver_data'] = this.driverData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BookingRatingTextToConsumerToDriver {
  String? ratingId;
  String? ratingText;

  BookingRatingTextToConsumerToDriver({this.ratingId, this.ratingText});

  BookingRatingTextToConsumerToDriver.fromJson(Map<String, dynamic> json) {
    ratingId = json['rating_id'];
    ratingText = json['rating_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating_id'] = this.ratingId;
    data['rating_text'] = this.ratingText;
    return data;
  }
}

class DriverData {
  String? dFname;
  String? dLname;
  String? driverImage;

  DriverData({this.dFname, this.dLname, this.driverImage});

  DriverData.fromJson(Map<String, dynamic> json) {
    dFname = json['d_fname'];
    dLname = json['d_lname'];
    driverImage = json['driver_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['d_fname'] = this.dFname;
    data['d_lname'] = this.dLname;
    data['driver_image'] = this.driverImage;
    return data;
  }
}
