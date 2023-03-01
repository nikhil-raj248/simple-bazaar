class SubCategory {
  int? id;
  String? name;
  String? cover;
  int? cateId;
  Null? extraField;
  int? status;

  SubCategory(
      {this.id,
        this.name,
        this.cover,
        this.cateId,
        this.extraField,
        this.status});

  SubCategory.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cover = json['cover'];
    cateId = json['cate_id'];
    extraField = json['extra_field'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['cover'] = this.cover;
    data['cate_id'] = this.cateId;
    data['extra_field'] = this.extraField;
    data['status'] = this.status;
    return data;
  }
}
