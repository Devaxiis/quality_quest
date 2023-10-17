
class User {
  int id;
  String username;
  String email;
  String password;


  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
  });


  factory User.fromJson(Map<String, Object?> json) => User(
    id: json["id"] as int,
    username: json["username"] as String,
    email: json["email"] as String,
    password: json["password"] as String,
  );


  Map<String, Object?> toJson() => {
    "id": id,
    "username": username,
    "email": email,
    "password": password,
  };


  @override
  String toString() {
    return "$User(id: $id, username: $username, email: $email, password: $password)";
  }
}
