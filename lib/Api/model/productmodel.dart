class Productmodel {
  String? status;
  String? notificationCount;
  List<Data>? data;

  Productmodel({this.status, this.notificationCount, this.data});

  Productmodel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    notificationCount = json['notification_count'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['notification_count'] = this.notificationCount;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? productId;
  String? image;
  String? weightClass;
  String? sizeText;
  String? name;
  String? discountPrice;
  String? combo;
  String? description;
  String? price;
  String? stockStatusId;
  String? stockStatus;
  String? minimum;
  int? rating;

  Data(
      {this.productId,
      this.image,
      this.weightClass,
      this.sizeText,
      this.name,
      this.discountPrice,
      this.combo,
      this.description,
      this.price,
      this.stockStatusId,
      this.stockStatus,
      this.minimum,
      this.rating});

  Data.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    image = json['image'];
    weightClass = json['weight_class'];
    sizeText = json['size_text'];
    name = json['name'];
    discountPrice = json['discount_price'];
    combo = json['combo'];
    description = json['description'];
    price = json['price'];
    stockStatusId = json['stock_status_id'];
    stockStatus = json['stock_status'];
    minimum = json['minimum'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['image'] = this.image;
    data['weight_class'] = this.weightClass;
    data['size_text'] = this.sizeText;
    data['name'] = this.name;
    data['discount_price'] = this.discountPrice;
    data['combo'] = this.combo;
    data['description'] = this.description;
    data['price'] = this.price;
    data['stock_status_id'] = this.stockStatusId;
    data['stock_status'] = this.stockStatus;
    data['minimum'] = this.minimum;
    data['rating'] = this.rating;
    return data;
  }
}
