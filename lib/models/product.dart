class ProductDetails {
  int? id;
  int? storeId;
  String? cover;
  String? name;
  String? images;
  int? originalPrice;
  int? sellPrice;
  int? discount;
  int? kind;
  int? cateId;
  int? subCateId;
  int? inHome;
  int? isSingle;
  int? haveGram;
  String? gram;
  int? haveKg;
  String? kg;
  int? havePcs;
  String? pcs;
  int? haveLiter;
  String? liter;
  int? haveMl;
  String? ml;
  String? descriptions;
  Null? keyFeatures;
  Null? disclaimer;
  String? expDate;
  int? typeOf;
  int? inOffer;
  int? inStoke;
  String? rating;
  int? totalRating;
  String? variations;
  int? size;
  int? status;
  Null? extraField;

  ProductDetails(
      {this.id,
        this.storeId,
        this.cover,
        this.name,
        this.images,
        this.originalPrice,
        this.sellPrice,
        this.discount,
        this.kind,
        this.cateId,
        this.subCateId,
        this.inHome,
        this.isSingle,
        this.haveGram,
        this.gram,
        this.haveKg,
        this.kg,
        this.havePcs,
        this.pcs,
        this.haveLiter,
        this.liter,
        this.haveMl,
        this.ml,
        this.descriptions,
        this.keyFeatures,
        this.disclaimer,
        this.expDate,
        this.typeOf,
        this.inOffer,
        this.inStoke,
        this.rating,
        this.totalRating,
        this.variations,
        this.size,
        this.status,
        this.extraField});

  ProductDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeId = json['store_id'];
    cover = json['cover'];
    name = json['name'];
    images = json['images'];
    originalPrice = json['original_price'];
    sellPrice = json['sell_price'];
    discount = json['discount'];
    kind = json['kind'];
    cateId = json['cate_id'];
    subCateId = json['sub_cate_id'];
    inHome = json['in_home'];
    isSingle = json['is_single'];
    haveGram = json['have_gram'];
    gram = json['gram'];
    haveKg = json['have_kg'];
    kg = json['kg'];
    havePcs = json['have_pcs'];
    pcs = json['pcs'];
    haveLiter = json['have_liter'];
    liter = json['liter'];
    haveMl = json['have_ml'];
    ml = json['ml'];
    descriptions = json['descriptions'];
    keyFeatures = json['key_features'];
    disclaimer = json['disclaimer'];
    expDate = json['exp_date'];
    typeOf = json['type_of'];
    inOffer = json['in_offer'];
    inStoke = json['in_stoke'];
    rating = json['rating'];
    totalRating = json['total_rating'];
    variations = json['variations'];
    size = json['size'];
    status = json['status'];
    extraField = json['extra_field'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['store_id'] = this.storeId;
    data['cover'] = this.cover;
    data['name'] = this.name;
    data['images'] = this.images;
    data['original_price'] = this.originalPrice;
    data['sell_price'] = this.sellPrice;
    data['discount'] = this.discount;
    data['kind'] = this.kind;
    data['cate_id'] = this.cateId;
    data['sub_cate_id'] = this.subCateId;
    data['in_home'] = this.inHome;
    data['is_single'] = this.isSingle;
    data['have_gram'] = this.haveGram;
    data['gram'] = this.gram;
    data['have_kg'] = this.haveKg;
    data['kg'] = this.kg;
    data['have_pcs'] = this.havePcs;
    data['pcs'] = this.pcs;
    data['have_liter'] = this.haveLiter;
    data['liter'] = this.liter;
    data['have_ml'] = this.haveMl;
    data['ml'] = this.ml;
    data['descriptions'] = this.descriptions;
    data['key_features'] = this.keyFeatures;
    data['disclaimer'] = this.disclaimer;
    data['exp_date'] = this.expDate;
    data['type_of'] = this.typeOf;
    data['in_offer'] = this.inOffer;
    data['in_stoke'] = this.inStoke;
    data['rating'] = this.rating;
    data['total_rating'] = this.totalRating;
    data['variations'] = this.variations;
    data['size'] = this.size;
    data['status'] = this.status;
    data['extra_field'] = this.extraField;
    return data;
  }
}
