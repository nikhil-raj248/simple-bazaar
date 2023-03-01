class Stores {
  int? id;
  int? uid;
  String? name;
  String? mobile;
  String? lat;
  String? lng;
  Null? verified;
  String? address;
  String? descriptions;
  Null? images;
  String? cover;
  String? openTime;
  String? closeTime;
  Null? isClosed;
  Null? certificateUrl;
  Null? certificateType;
  Null? rating;
  Null? totalRating;
  int? cid;
  String? zipcode;
  Null? extraField;
  int? status;
  int? distance;

  Stores(
      {this.id,
      this.uid,
      this.name,
      this.mobile,
      this.lat,
      this.lng,
      this.verified,
      this.address,
      this.descriptions,
      this.images,
      this.cover,
      this.openTime,
      this.closeTime,
      this.isClosed,
      this.certificateUrl,
      this.certificateType,
      this.rating,
      this.totalRating,
      this.cid,
      this.zipcode,
      this.extraField,
      this.status,
      this.distance});

  Stores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    name = json['name'];
    mobile = json['mobile'];
    lat = json['lat'];
    lng = json['lng'];
    verified = json['verified'];
    address = json['address'];
    descriptions = json['descriptions'];
    images = json['images'];
    cover = json['cover'];
    openTime = json['open_time'];
    closeTime = json['close_time'];
    isClosed = json['isClosed'];
    certificateUrl = json['certificate_url'];
    certificateType = json['certificate_type'];
    rating = json['rating'];
    totalRating = json['total_rating'];
    cid = json['cid'];
    zipcode = json['zipcode'];
    extraField = json['extra_field'];
    status = json['status'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['verified'] = this.verified;
    data['address'] = this.address;
    data['descriptions'] = this.descriptions;
    data['images'] = this.images;
    data['cover'] = this.cover;
    data['open_time'] = this.openTime;
    data['close_time'] = this.closeTime;
    data['isClosed'] = this.isClosed;
    data['certificate_url'] = this.certificateUrl;
    data['certificate_type'] = this.certificateType;
    data['rating'] = this.rating;
    data['total_rating'] = this.totalRating;
    data['cid'] = this.cid;
    data['zipcode'] = this.zipcode;
    data['extra_field'] = this.extraField;
    data['status'] = this.status;
    data['distance'] = this.distance;
    return data;
  }
}
