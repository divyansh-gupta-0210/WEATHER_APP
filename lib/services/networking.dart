import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.urt);

  final String urt;

  Future getData() async {
    var url = Uri.parse(urt);

    http.Response response = await http.get(url);
    print(response.statusCode);

    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      return decodedData;

    } else {
      print(response.statusCode);
    }
  }
}
