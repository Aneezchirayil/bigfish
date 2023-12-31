class Aboutmodal {
  String? status;
  Data? data;

  Aboutmodal({this.status, this.data});

  Aboutmodal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? title;
  String? description;
  List<EmployeesInfo>? employeesInfo;

  Data({this.title, this.description, this.employeesInfo});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    if (json['employees_info'] != null) {
      employeesInfo = <EmployeesInfo>[];
      json['employees_info'].forEach((v) {
        employeesInfo!.add(new EmployeesInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    if (this.employeesInfo != null) {
      data['employees_info'] =
          this.employeesInfo!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EmployeesInfo {
  String? id;
  String? name;
  String? position;
  String? about;
  String? image;
  String? userId;
  String? satffName;
  String? positionId;

  EmployeesInfo(
      {this.id,
      this.name,
      this.position,
      this.about,
      this.image,
      this.userId,
      this.satffName,
      this.positionId});

  EmployeesInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    position = json['position'];
    about = json['about'];
    image = json['image'];
    userId = json['user_id'];
    satffName = json['satff_name'];
    positionId = json['position_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['position'] = this.position;
    data['about'] = this.about;
    data['image'] = this.image;
    data['user_id'] = this.userId;
    data['satff_name'] = this.satffName;
    data['position_id'] = this.positionId;
    return data;
  }
}
