class QrData {
  String? s0;
  int? id;
  String? name;
  String? image;
  String? description;

  QrData({
    this.s0,
    this.id,
    this.name,
    this.image,
    this.description,
  });

  QrData.fromJson(Map<String, dynamic> json) {
    s0 = json['0'];
    id = json['id'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['0'] = s0;
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}
