
class TimeModel{
  final int code;
  final String message;
  TimeModel(this.code, this.message);
  TimeModel.fromJson(Map<String, dynamic> json)
    : code = json['code'] as int,
      message = json['message'] as String;
}