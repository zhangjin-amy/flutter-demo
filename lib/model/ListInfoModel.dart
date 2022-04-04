
import 'package:flutter_application_demo/model/ListItemMedel.dart';

class ListInfoModel {
  final int code;
  final String message;
  List<ListItemModel> result;

  ListInfoModel(this.code, this.message, this.result);

  ListInfoModel.fromJson(Map<String, dynamic> json)
    : code = json['code'] as int,
      message = json['message'] as String,
      result = List<ListItemModel>.from(json['result']?.map((v) => ListItemModel.fromJson(v))?.toList() ?? []);
}