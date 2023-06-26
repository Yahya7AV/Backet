import 'package:backet/Controller/ads_controller.dart';
import 'package:backet/View/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text("MakeUp MVC App"),
        ),
        titleSpacing: 60,
        backgroundColor: Colors.black26,
        toolbarHeight: 50,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color:Colors.black12 ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Best MakeUp',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  IconButton(
                      icon: const Icon(Icons.view_list_rounded), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.add_a_photo_outlined), onPressed: () {}),
                ],
              ),
            ),
            Expanded(
              child: Obx(

                      () {
                    if (productController.isLoading.value) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return StaggeredGridTile.count(
                        crossAxisCellCount: 3,
                        mainAxisCellCount: 16,
                        child:ProductTile(productController.productList[10])
                      );
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}