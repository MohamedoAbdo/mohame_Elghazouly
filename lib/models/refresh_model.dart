class RefreshMadel {
  final String name;
  final String email;

  RefreshMadel({
    required this.name,
    required this.email,
  });

  factory RefreshMadel.fromJson(jsonData) {
    return RefreshMadel(
      name: jsonData['user']['name'],
      email: jsonData['user']['email'],
    );
  }
}

  // tojson(){
  //   return{"email":email,"fullname":name};
  // }