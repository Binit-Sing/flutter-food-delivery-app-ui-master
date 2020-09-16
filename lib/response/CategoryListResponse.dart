class CategoryListResponse {
  int statusCode;
  Data data;
  String message;

  CategoryListResponse({this.statusCode, this.data, this.message});

  CategoryListResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int totalCount;
  int page;
  int perPage;
  SortBy sortBy;
  List<Null> filter;
  List<DataRes> data;

  Data(
      {this.totalCount,
      this.page,
      this.perPage,
      this.sortBy,
      this.filter,
      this.data});

  Data.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    page = json['page'];
    perPage = json['perPage'];
    sortBy =
        json['sortBy'] != null ? new SortBy.fromJson(json['sortBy']) : null;

    if (json['data'] != null) {
      data = new List<DataRes>();
      json['data'].forEach((v) {
        data.add(new DataRes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalCount'] = this.totalCount;
    data['page'] = this.page;
    data['perPage'] = this.perPage;
    if (this.sortBy != null) {
      data['sortBy'] = this.sortBy.toJson();
    }

    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SortBy {
  String sId;

  SortBy({this.sId});

  SortBy.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    return data;
  }
}

class DataRes {
  String description;
  String icon;
  bool status;
  bool isDeleted;
  String sId;
  String title;
  String createdAt;
  int iV;

  DataRes(
      {this.description,
      this.icon,
      this.status,
      this.isDeleted,
      this.sId,
      this.title,
      this.createdAt,
      this.iV});

  DataRes.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    icon = json['icon'];
    status = json['status'];
    isDeleted = json['isDeleted'];
    sId = json['_id'];
    title = json['title'];
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['icon'] = this.icon;
    data['status'] = this.status;
    data['isDeleted'] = this.isDeleted;
    data['_id'] = this.sId;
    data['title'] = this.title;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}
