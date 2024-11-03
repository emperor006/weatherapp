class Temperature {
  double? min;
  double? max;
  double? afternoon;
  double? night;
  double? evening;
  double? morning;

  Temperature(
      {this.min,
        this.max,
        this.afternoon,
        this.night,
        this.evening,
        this.morning});

  Temperature.fromJson(Map<String, dynamic> json) {
    min = json['min'];
    max = json['max'];
    afternoon = json['afternoon'];
    night = json['night'];
    evening = json['evening'];
    morning = json['morning'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['min'] = this.min;
    data['max'] = this.max;
    data['afternoon'] = this.afternoon;
    data['night'] = this.night;
    data['evening'] = this.evening;
    data['morning'] = this.morning;
    return data;
  }
}