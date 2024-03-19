// To parse this JSON data, do
//
//     final hospitalResponseModel = hospitalResponseModelFromJson(jsonString);

import 'dart:convert';

HospitalResponseModel hospitalResponseModelFromJson(String str) =>
    HospitalResponseModel.fromJson(json.decode(str));

String hospitalResponseModelToJson(HospitalResponseModel data) =>
    json.encode(data.toJson());

class HospitalResponseModel {
  List<dynamic>? htmlAttributions;
  String? nextPageToken;
  List<Results>? results;
  String? status;

  HospitalResponseModel({
    this.htmlAttributions,
    this.nextPageToken,
    this.results,
    this.status,
  });

  factory HospitalResponseModel.fromJson(Map<String, dynamic> json) =>
      HospitalResponseModel(
        htmlAttributions: json["html_attributions"] == null
            ? []
            : List<dynamic>.from(json["html_attributions"]!.map((x) => x)),
        nextPageToken: json["next_page_token"],
        results: json["results"] == null
            ? []
            : List<Results>.from(
            json["results"]!.map((x) => Results.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
    "html_attributions": htmlAttributions == null
        ? []
        : List<dynamic>.from(htmlAttributions!.map((x) => x)),
    "next_page_token": nextPageToken,
    "results": results == null
        ? []
        : List<dynamic>.from(results!.map((x) => x.toJson())),
    "status": status,
  };
}

class Results {
  BusinessStatus? businessStatus;
  Geometry? geometry;
  String? icon;
  IconBackgroundColor? iconBackgroundColor;
  String? iconMaskBaseUri;
  String? name;
  String? placeId;
  double? rating;
  String? reference;
  Scope? scope;
  List<String>? types;
  int? userRatingsTotal;
  String? vicinity;
  OpeningHours? openingHours;
  List<Photo>? photos;
  PlusCode? plusCode;
  bool? permanentlyClosed;

  Results({
    this.businessStatus,
    this.geometry,
    this.icon,
    this.iconBackgroundColor,
    this.iconMaskBaseUri,
    this.name,
    this.placeId,
    this.rating,
    this.reference,
    this.scope,
    this.types,
    this.userRatingsTotal,
    this.vicinity,
    this.openingHours,
    this.photos,
    this.plusCode,
    this.permanentlyClosed,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    businessStatus: businessStatusValues.map[json["business_status"]]!,
    geometry: json["geometry"] == null
        ? null
        : Geometry.fromJson(json["geometry"]),
    icon: json["icon"],
    iconBackgroundColor:
    iconBackgroundColorValues.map[json["icon_background_color"]]!,
    iconMaskBaseUri: json["icon_mask_base_uri"],
    name: json["name"],
    placeId: json["place_id"],
    rating: json["rating"]?.toDouble(),
    reference: json["reference"],
    scope: scopeValues.map[json["scope"]]!,
    types: json["types"] == null
        ? []
        : List<String>.from(json["types"]!.map((x) => x)),
    userRatingsTotal: json["user_ratings_total"],
    vicinity: json["vicinity"],
    openingHours: json["opening_hours"] == null
        ? null
        : OpeningHours.fromJson(json["opening_hours"]),
    photos: json["photos"] == null
        ? []
        : List<Photo>.from(json["photos"]!.map((x) => Photo.fromJson(x))),
    plusCode: json["plus_code"] == null
        ? null
        : PlusCode.fromJson(json["plus_code"]),
    permanentlyClosed: json["permanently_closed"],
  );

  Map<String, dynamic> toJson() => {
    "business_status": businessStatusValues.reverse[businessStatus],
    "geometry": geometry?.toJson(),
    "icon": icon,
    "icon_background_color":
    iconBackgroundColorValues.reverse[iconBackgroundColor],
    "icon_mask_base_uri": iconMaskBaseUri,
    "name": name,
    "place_id": placeId,
    "rating": rating,
    "reference": reference,
    "scope": scopeValues.reverse[scope],
    "types": types == null ? [] : List<dynamic>.from(types!.map((x) => x)),
    "user_ratings_total": userRatingsTotal,
    "vicinity": vicinity,
    "opening_hours": openingHours?.toJson(),
    "photos": photos == null
        ? []
        : List<dynamic>.from(photos!.map((x) => x.toJson())),
    "plus_code": plusCode?.toJson(),
    "permanently_closed": permanentlyClosed,
  };
}

enum BusinessStatus { OPERATIONAL, CLOSED_TEMPORARILY }

final businessStatusValues = EnumValues({
  "CLOSED_TEMPORARILY": BusinessStatus.CLOSED_TEMPORARILY,
  "OPERATIONAL": BusinessStatus.OPERATIONAL
});

class Geometry {
  Locations? location;
  Viewport? viewport;

  Geometry({
    this.location,
    this.viewport,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) => Geometry(
    location: json["location"] == null
        ? null
        : Locations.fromJson(json["location"]),
    viewport: json["viewport"] == null
        ? null
        : Viewport.fromJson(json["viewport"]),
  );

  Map<String, dynamic> toJson() => {
    "location": location?.toJson(),
    "viewport": viewport?.toJson(),
  };
}

class Locations {
  double? lat;
  double? lng;

  Locations({
    this.lat,
    this.lng,
  });

  factory Locations.fromJson(Map<String, dynamic> json) => Locations(
    lat: json["lat"]?.toDouble(),
    lng: json["lng"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}

class Viewport {
  Locations? northeast;
  Locations? southwest;

  Viewport({
    this.northeast,
    this.southwest,
  });

  factory Viewport.fromJson(Map<String, dynamic> json) => Viewport(
    northeast: json["northeast"] == null
        ? null
        : Locations.fromJson(json["northeast"]),
    southwest: json["southwest"] == null
        ? null
        : Locations.fromJson(json["southwest"]),
  );

  Map<String, dynamic> toJson() => {
    "northeast": northeast?.toJson(),
    "southwest": southwest?.toJson(),
  };
}

enum IconBackgroundColor { F88181, THE_7_B9_EB0 }

final iconBackgroundColorValues = EnumValues({
  "#F88181": IconBackgroundColor.F88181,
  "#7B9EB0": IconBackgroundColor.THE_7_B9_EB0
});

class OpeningHours {
  bool? openNow;

  OpeningHours({
    this.openNow,
  });

  factory OpeningHours.fromJson(Map<String, dynamic> json) => OpeningHours(
    openNow: json["open_now"],
  );

  Map<String, dynamic> toJson() => {
    "open_now": openNow,
  };
}

class Photo {
  int? height;
  List<String>? htmlAttributions;
  String? photoReference;
  int? width;

  Photo({
    this.height,
    this.htmlAttributions,
    this.photoReference,
    this.width,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
    height: json["height"],
    htmlAttributions: json["html_attributions"] == null
        ? []
        : List<String>.from(json["html_attributions"]!.map((x) => x)),
    photoReference: json["photo_reference"],
    width: json["width"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "html_attributions": htmlAttributions == null
        ? []
        : List<dynamic>.from(htmlAttributions!.map((x) => x)),
    "photo_reference": photoReference,
    "width": width,
  };
}

class PlusCode {
  String? compoundCode;
  String? globalCode;

  PlusCode({
    this.compoundCode,
    this.globalCode,
  });

  factory PlusCode.fromJson(Map<String, dynamic> json) => PlusCode(
    compoundCode: json["compound_code"],
    globalCode: json["global_code"],
  );

  Map<String, dynamic> toJson() => {
    "compound_code": compoundCode,
    "global_code": globalCode,
  };
}

enum Scope { GOOGLE }

final scopeValues = EnumValues({"GOOGLE": Scope.GOOGLE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}




