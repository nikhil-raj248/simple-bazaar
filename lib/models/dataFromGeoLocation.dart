import 'package:simple_bazaar/models/store.dart';

import 'category.dart';
import 'city.dart';

class DataFromGeoLocation {
  List<Stores>? stores;
  String? banners;
  List<Category>? category;
  CityInfo? cityInfo;

  DataFromGeoLocation(
      {this.stores,
        this.banners,
        this.category,
        this.cityInfo});

  DataFromGeoLocation.fromJson(Map<String, dynamic> json) {
    if (json['stores'] != null) {
      stores = <Stores>[];
      json['stores'].forEach((v) {
        stores!.add(new Stores.fromJson(v));
      });
    }
    banners = json['banners'];
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category!.add(new Category.fromJson(v));
      });
    }
    cityInfo = json['cityInfo'] != null
        ? new CityInfo.fromJson(json['cityInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.stores != null) {
      data['stores'] = this.stores!.map((v) => v.toJson()).toList();
    }
    data['banners'] = this.banners;
    if (this.category != null) {
      data['category'] = this.category!.map((v) => v.toJson()).toList();
    }
    if (this.cityInfo != null) {
      data['cityInfo'] = this.cityInfo!.toJson();
    }
    return data;
  }
}
