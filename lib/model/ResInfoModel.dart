import 'ResItemModel.dart';

class ResInfoModel {
  final List<ResItemModel> list;
  ResInfoModel(this.list);

  ResInfoModel.fromJson(Map<String, dynamic> json)
      :list = List<ResItemModel>.from(json['ls']?.map((v) => ResItemModel.fromJson(v))?.toList() ?? []);
}