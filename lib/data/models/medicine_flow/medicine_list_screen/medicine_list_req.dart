class MedicineListScreenReq {
  String? cityName;
  String? userId;
  String? type;
  String? saltId;
  String? categoryId;
  String? levelId;
  String? slotValue;
  String? pageNo;
  String? sortingBy;
  List<FilterBy>? filterBy;

  MedicineListScreenReq(
      {this.cityName,
      this.userId,
      this.type,
      this.saltId,
      this.categoryId,
      this.levelId,
      this.slotValue,
      this.pageNo,
      this.sortingBy,
      this.filterBy});

  MedicineListScreenReq.fromJson(Map<String, dynamic> json) {
    cityName = json['cityName'];
    userId = json['userId'];
    type = json['type'];
    saltId = json['saltId'];
    categoryId = json['categoryId'];
    levelId = json['LevelId'];
    slotValue = json['slotValue'];
    pageNo = json['pageNo'];
    sortingBy = json['sortingBy'];
    if (json['filterBy'] != null) {
      filterBy = <FilterBy>[];
      json['filterBy'].forEach((v) {
        filterBy!.add(new FilterBy.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cityName'] = this.cityName;
    data['userId'] = this.userId;
    data['type'] = this.type;
    data['saltId'] = this.saltId;
    data['categoryId'] = this.categoryId;
    data['LevelId'] = this.levelId;
    data['slotValue'] = this.slotValue;
    data['pageNo'] = this.pageNo;
    data['sortingBy'] = this.sortingBy;
    if (this.filterBy != null) {
      data['filterBy'] = this.filterBy!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FilterBy {
  String? title;
  List<String>? selectedId;

  FilterBy({this.title, this.selectedId});

  FilterBy.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    selectedId = json['selectedId'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['selectedId'] = this.selectedId;
    return data;
  }
}
