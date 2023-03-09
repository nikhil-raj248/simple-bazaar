import 'package:simple_bazaar/models/product.dart';

class ProductByStoreId {
  List<ProductDetails>? data;
  StoreInfo? storeInfo;
  bool? success;
  int? status;

  ProductByStoreId({this.data, this.storeInfo, this.success, this.status});

  ProductByStoreId.fromJson(Map<String, dynamic> json) {
    print("3000000");
    if (json['data'] != null) {
      print("2000000");
      data = <ProductDetails>[];
      print("1000000");
      json['data'].forEach((v) {
        print("000000");
        data!.add(new ProductDetails.fromJson(v));
      });
    }
    print("0000001");
    storeInfo = json['storeInfo'] != null
        ? new StoreInfo.fromJson(json['storeInfo'])
        : null;
    print("0000002");
    success = json['success'];
    print("0000003");
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.storeInfo != null) {
      data['storeInfo'] = this.storeInfo!.toJson();
    }
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }
}

class StoreInfo {
  int? id;
  int? uid;
  String? name;
  int? status;
  String? zipcode;
  int? cid;

  StoreInfo(
      {this.id, this.uid, this.name, this.status, this.zipcode, this.cid});

  StoreInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    name = json['name'];
    status = json['status'];
    zipcode = json['zipcode'];
    cid = json['cid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['status'] = this.status;
    data['zipcode'] = this.zipcode;
    data['cid'] = this.cid;
    return data;
  }
}