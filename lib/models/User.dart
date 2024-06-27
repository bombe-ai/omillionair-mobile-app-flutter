class User {
  String? username;
  String? password;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? city;
  String? state;
  String? zip;
  String? country;
  String? id;

  User({
    this.username,
    this.password,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.city,
    this.state,
    this.zip,
    this.country,
    this.id
  });


    factory User.fromJson(Map<String, dynamic> json) {
      return User(
        username: json['username'],
        password: json['password'],
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        address: json['address'],
        city: json['city'],
        state: json['state'],
        zip: json['zip'],
        country: json['country'],
        id: json['id'],
      );
    }
}