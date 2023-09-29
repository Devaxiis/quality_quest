sealed class Api{
  static const baseUrl = "testplatform-001-site1.etempurl.com";

  static const apiSignUp = "/api/Users";
  static const apiSignIN = "/api/Sign/In";

  static const Map<String, String> headers = {
    "Content-Type": "application/json; charset=UTF-8",
  };
}