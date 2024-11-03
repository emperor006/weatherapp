class Max {
  double? speed;
  int? direction;

  Max({this.speed, this.direction});

  Max.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    direction = json['direction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speed'] = this.speed;
    data['direction'] = this.direction;
    return data;
  }
}