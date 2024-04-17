class MockRestaurant {
  MockRestaurant._();

  static final Map<String, dynamic> get = {
    "id": "mock_restaurant_01",
    "name": "テストレストラン",
    "imageUrl": "https://placehold.jp/150x150.png?text=レストラン",
    "latitude": 35.6896289808,
    "longitude": 139.69175085422,
    "distance": 150.0,
    "priceMin": 1000,
    "priceMax": 3000,
  };
}
