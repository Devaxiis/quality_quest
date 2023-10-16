class TokenModel {
  String accessToken;
  String refreshToken;
  String expireDate;

  TokenModel({
    required this.accessToken,
    required this.refreshToken,
    required this.expireDate,
  });

  factory TokenModel.fromJson(Map<String, Object?> json) {
    return TokenModel(
      accessToken: json["accessToken"] as String,
      refreshToken: json["refreshToken"] as String,
      expireDate: json["expireDate"] as String,
    );
  }
}
