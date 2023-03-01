import 'package:simple_bazaar/models/subCategory.dart';

class Category {
  int? id;
  String? name;
  String? cover;
  Null? extraField;
  int? status;
  List<SubCategory>? subCates;

  Category(
      {this.id,
        this.name,
        this.cover,
        this.extraField,
        this.status,
        this.subCates});

  Category.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cover = json['cover'];
    extraField = json['extra_field'];
    status = json['status'];
    if (json['subCates'] != null) {
      subCates = <SubCategory>[];
      json['subCates'].forEach((v) {
        subCates!.add(new SubCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['cover'] = this.cover;
    data['extra_field'] = this.extraField;
    data['status'] = this.status;
    if (this.subCates != null) {
      data['subCates'] = this.subCates!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}