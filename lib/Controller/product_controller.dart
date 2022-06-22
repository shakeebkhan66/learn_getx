// import 'package:get/get.dart';
// import 'package:learn_getx/Model/product_model.dart';
//
// class ProductController extends GetxController{
//
//    // List<Products> myProduct = [];
//    // RxList<Products> data = RxList(myProduct);
//    //
//    // List<Products> myProduct = []..length = 500;
//
//   var myProduct = List.filled(500, [], growable: true).obs;
//
//    @override
//   void onInit() {
//     super.onInit();
//     fetchProducts();
//   }
//
//   void fetchProducts() async{
//      await Future.delayed(Duration(seconds: 1));
//      var productResult = [
//        Products(
//          id: 1,
//          productName: "T-shirt",
//          productDescription: "Cotton Stuff For Men Only",
//          productPrice: 1200,
//        ),
//        Products(
//          id: 2,
//          productName: "T-shirt",
//          productDescription: "Cotton Stuff For Men Only",
//          productPrice: 1000,
//        ),
//        Products(
//          id: 3,
//          productName: "T-shirt",
//          productDescription: "Cotton Stuff For Men Only",
//          productPrice: 1100,
//        ),
//        Products(
//          id: 4,
//          productName: "T-shirt",
//          productDescription: "Cotton Stuff For Men Only",
//          productPrice: 1500,
//        ),
//      ];
//
//      myProduct = productResult as RxList<List>;
//   }
//
// }

import 'package:get/state_manager.dart';
import '../Model/product_model.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd'),
    ];

    products.value = productResult;
  }
}