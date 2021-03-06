import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/cart_controller.dart';
import '../Controller/product_controller.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.products[index].productName,
                                        style: const TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                          controller.products[index].productDescription),
                                    ],
                                  ),
                                  Text('\$${controller.products[index].price}',
                                      style: const TextStyle(fontSize: 24)),
                                ],
                              ),
                              MaterialButton(
                                onPressed: () {
                                  cartController
                                      .addToCart(controller.products[index]);
                                },
                                color: Colors.blue,
                                textColor: Colors.white,
                                child: const Text('Add to Cart'),
                              ),
                              Obx(() => IconButton(
                                icon: controller
                                    .products[index].isFavorite.value
                                    ? const Icon(Icons.check_box_rounded)
                                    : const Icon(Icons
                                    .check_box_outline_blank_outlined),
                                onPressed: () {
                                  controller.products[index].isFavorite
                                      .toggle();
                                },
                              ))
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
<<<<<<< HEAD
            GetX<CartController>(builder: (controller) {
              return Text(
                'Total amount: \$ ${controller.totalPrice}',
                style: const TextStyle(fontSize: 32, color: Colors.white),
              );
            }),
=======
            // GetX<CartController>(builder: (controller) {
            //   return Text(
            //     'Total amount: \$ ${controller.totalPrice}',
            //     style: const TextStyle(fontSize: 32, color: Colors.white),
            //   );
            // }),

            // TODO we can use GetBuilder Too instead of GetX or Obx
            // GetBuilder<CartController>(
            //   builder: (controller){
            //     return Text(
            //       'Total Amount: \$ ${controller.totalTestAmount}',
            //       style: const TextStyle(fontSize: 32, color: Colors.white),
            //     );
            //   },
            // ),

            // TODO we can also perform same functionalities by using OBX
            // TODO Obx has no builder and controller so we can use it when we
            //  have the instance of our Controller class

            // TODO Lets make a Obx
            Obx((){
              return Text(
                "Total Amount is : \$ ${cartController.totalPrice}",
                style: TextStyle(fontSize: 32, color: Colors.white),
              );
            }),

>>>>>>> 2c07d81 (State Management with GetX)
            const SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.amber,
        icon: const Icon(
          Icons.add_shopping_cart_rounded,
          color: Colors.black,
        ),
        label: GetX<CartController>(builder: (controller) {
          return Text(
<<<<<<< HEAD
            controller.count.toString(),
=======
            controller.nameOfProduct.toString(),
>>>>>>> 2c07d81 (State Management with GetX)
            style: const TextStyle(color: Colors.black, fontSize: 24),
          );
        }),
      ),
    );
  }
}