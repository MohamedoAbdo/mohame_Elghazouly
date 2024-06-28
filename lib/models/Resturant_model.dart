class RestaurantModel {
  int? id;
  String? image;
  String? name;
  List<String>? album;
  String? description;
  String? website;
  String? phone;
  String? address;

  RestaurantModel(
      {this.id,
      this.image,
      this.name,
      this.album,
      this.description,
      this.website,
      this.phone,
      this.address});

  RestaurantModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    name = json['name'];
    album = json['album'].cast<String>();
    description = json['description'];
    website = json['website'];
    phone = json['phone'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['name'] = name;
    data['album'] = album;
    data['description'] = description;
    data['website'] = website;
    data['phone'] = phone;
    data['address'] = address;
    return data;
  }
}
