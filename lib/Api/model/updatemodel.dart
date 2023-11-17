class Updatemodal {
  String? status;
  String? notificationCount;
  String? message;

  Updatemodal({this.status, this.notificationCount, this.message});

  Updatemodal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationCount = json['notification_count'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['notification_count'] = this.notificationCount;
    data['message'] = this.message;
    return data;
  }
}
