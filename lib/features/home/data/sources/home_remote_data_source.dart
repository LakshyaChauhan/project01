import 'package:http/http.dart' as http;

abstract interface class HomeRemoteDataSource {
  Future<String> fetchDataFromServer();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final String homeURL;
  HomeRemoteDataSourceImpl({required this.homeURL});

  @override
  Future<String> fetchDataFromServer() async {
    try {
      final response = await http.get(Uri.parse(homeURL));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception("HOME: Error in fetching data.");
    }
  }
}
