class CategoryModel {
  bool? status;
  String? msg;
  List<CategoryResponse>? response;

  CategoryModel({this.status, this.msg, this.response});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['response'] != null) {
      response = <CategoryResponse>[];
      json['response'].forEach((v) {
        response!.add(new CategoryResponse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.response != null) {
      data['response'] = this.response!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryResponse {
  int? id;
  String? categoryName;
  String? img;

  CategoryResponse({this.id, this.categoryName, this.img});

  CategoryResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['category_name'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_name'] = this.categoryName;
    data['img'] = this.img;
    return data;
  }
}
