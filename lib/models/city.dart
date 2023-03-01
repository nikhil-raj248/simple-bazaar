class CityInfo {
  int? id;
  String? name;
  String? lat;
  String? lng;
  Null? extraField;
  int? status;

  CityInfo(
      {this.id, this.name, this.lat, this.lng, this.extraField, this.status});

  CityInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lat = json['lat'];
    lng = json['lng'];
    extraField = json['extra_field'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['extra_field'] = this.extraField;
    data['status'] = this.status;
    return data;
  }
}