class MenuItem {
  String? sId;
  String? itemName;
  int? price;
  double? rating;
  List<Requirements>? requirements;
  String? photo;
  bool? jain;
  bool? veg;
  bool? nonVeg;

  MenuItem(
      {this.sId,
      this.itemName,
      this.price,
      this.rating,
      this.requirements,
      this.photo,
      this.jain,
      this.veg,
      this.nonVeg});

  MenuItem.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    itemName = json['itemName'];
    price = json['price'];
    rating = json['rating'];
    if (json['requirements'] != null) {
      requirements = <Requirements>[];
      json['requirements'].forEach((v) {
        requirements!.add(new Requirements.fromJson(v));
      });
    }
    photo = json['photo'];
    jain = json['jain'];
    veg = json['veg'];
    nonVeg = json['nonVeg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['itemName'] = this.itemName;
    data['price'] = this.price;
    data['rating'] = this.rating;
    if (this.requirements != null) {
      data['requirements'] = this.requirements!.map((v) => v.toJson()).toList();
    }
    data['photo'] = this.photo;
    data['jain'] = this.jain;
    data['veg'] = this.veg;
    data['nonVeg'] = this.nonVeg;
    return data;
  }
}

class Requirements {
  String? item;
  double? qty;

  Requirements({this.item, this.qty});

  Requirements.fromJson(Map<String, dynamic> json) {
    item = json['item'];
    qty = json['qty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item'] = this.item;
    data['qty'] = this.qty;
    return data;
  }
}
