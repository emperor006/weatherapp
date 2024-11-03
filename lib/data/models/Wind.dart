import 'Max.dart';

class Wind {
  Max? max;

  Wind({this.max});

  Wind.fromJson(Map<String, dynamic> json) {
    max = json['max'] != null ? new Max.fromJson(json['max']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.max != null) {
      data['max'] = this.max!.toJson();
    }
    return data;
  }
}