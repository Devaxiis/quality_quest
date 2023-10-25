final d = {
  "id": "71",
  "email": "chello@gmail.com",
  "firstname": "dhdhdh",
  "lastname": "uddhdb",
  "device": "SM-A135F",
  "exp": 1698262912,
  "iss": "TestPlatform.com",
  "aud": "PhoneApp"
};

class UserToken {
  String id;
  String email;
  String firstname;
  String lastname;
  String device;
  double exp;
  String iss;
  String aud;

  UserToken({
    required this.id,
    required this.email,
    required this.firstname,
    required this.lastname,
    required this.device,
    required this.exp,
    required this.iss,
    required this.aud,
  });

  factory UserToken.fromJson(Map<String, Object?> json) {
    return UserToken(
      id: json ["id"] as String,
      email:json ["email"] as String,
      firstname:json ["firstname"] as String,
      lastname:json ["lastname"] as String,
      device:json ["device"] as String,
      exp:json ["exp"] as double,
      iss:json ["iss"] as String,
      aud:json ["aud"] as String,
    );
  }
}
