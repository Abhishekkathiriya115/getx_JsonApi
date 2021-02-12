
import 'package:getx_api/api/api_service.dart';
import 'package:getx_api/model/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController
{
  var isLoading = true.obs;
  var productList = List<ProductModel>().obs;

  @override
  void onInit() {
    Post();
    super.onInit();
  }

  Future<void> Post() async {
    try {
      isLoading(true);
      var products = await PostAll.fetchProducts();
      if(products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }


}