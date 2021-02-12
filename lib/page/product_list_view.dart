import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/controller/product_controller.dart';

class ProductListView extends StatelessWidget {

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AKKK"),
      ),
      body: Obx ( () {
        if(productController.isLoading.value)
          return Center(child: CircularProgressIndicator(),);
        else
          return ListView.builder(
            itemCount: productController.productList.length,
            itemBuilder: (context,index) {
              return Column (
                children: [
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                      margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child:
                          Image.network(
                            'https://newswebsite786.000webhostapp.com/uploads/${productController.productList[index].image}',
                          ),
                         //Text(productController.productList[index].titlle),
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          );
      }),
    );
  }
}
