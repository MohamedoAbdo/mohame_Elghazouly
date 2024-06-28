class PlacesModel {
  List<Place>? data;
  String? massag;
  int? status;

  PlacesModel({this.data, this.massag, this.status});

  PlacesModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Place>[];
      json['data'].forEach((v) {
        data!.add(Place.fromJson(v));
      });
    }
    massag = json['massag'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['massag'] = massag;
    data['status'] = status;
    return data;
  }
}

class Place {
  String? s0;
  int? id;
  String? name;
  String? image;
  String? timework;
  String? price;
  String? description;
  String? countryId;
  String? tourismType;

  Place(
      {this.s0,
      this.id,
      this.name,
      this.image,
      this.timework,
      this.price,
      this.description,
      this.countryId,
      this.tourismType});

  Place.fromJson(Map<String, dynamic> json) {
    s0 = json['0'];
    id = json['id'];
    name = json['name'];
    image = json['image'];
    timework = json['timework'];
    price = json['price'];
    description = json['description'];
    countryId = json['country_id'];
    tourismType = json['tourism type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['0'] = s0;
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['timework'] = timework;
    data['price'] = price;
    data['description'] = description;
    data['country_id'] = countryId;
    data['tourism type'] = tourismType;
    return data;
  }
}
