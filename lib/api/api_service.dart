import 'package:getx_api/model/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class PostAll {


  // ignore: missing_return
  static Future<List<ProductModel>> fetchProducts() async {

    var url = 'https://newswebsite786.000webhostapp.com/postAll.php';
    var response = await get(url);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }
}
