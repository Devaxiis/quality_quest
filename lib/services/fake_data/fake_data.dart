class FakeData {
  Map<String, Map<String, List<String>>> tarix = {
    "Ozbekiston taxt?": {
      "Toshkent": ["Toshkent", "Andijon", "Samarqand", "Buhoro"]
    },
    "Ozbeksdvinisdbnvist Poytaxt?": {
      "Toshkent": ["Toshkent", "Andijon", "vsdv", "sdv"]
    },
    "vist Poytaxt?": {
      "Toshkent": ["s", "Andssijon", "Toshkent", "sdv"]
    },
  };

  bool chekAnswer({required String answer, required String question}) {
    return tarix[question]?.keys.first == answer;
  }
}
