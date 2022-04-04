

class ListItemModel {
  final String sid;
  final String name;

  ListItemModel(this.sid, this.name);

  ListItemModel.fromJson(Map<String, dynamic> json)
    : sid = json['sid'] as String,
      name = json['name'] as String;
}