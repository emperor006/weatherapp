class CloudCover {
  int? afternoon;

  CloudCover({this.afternoon});

  CloudCover.fromJson(Map<String, dynamic> json) {
    afternoon = json['afternoon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['afternoon'] = this.afternoon;
    return data;
  }
}