class StatusModel {
  String? status;
  int? statusCode;
  String? message;
  String? data;
  int? userId;

  StatusModel({this.status, this.statusCode, this.message, this.data, this.userId});

  StatusModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
    data = json['data'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['statusCode'] = statusCode;
    data['message'] = message;
    data['data'] = this.data;
    data['user_id'] = userId;
    return data;
  }
}
