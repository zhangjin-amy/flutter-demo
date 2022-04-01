class ResItemModel {
  final String id;
  final String fullName;

  ResItemModel(this.id, this.fullName);

  ResItemModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String,
        fullName = json['full_name'] as String;
}
