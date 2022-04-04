class ResItemModel {
  final String date;
  final String time;

  ResItemModel(this.date, this.time);

  ResItemModel.fromJson(Map<String, dynamic> json)
      : date = json['date'] as String,
        time = json['time'] as String;
}
