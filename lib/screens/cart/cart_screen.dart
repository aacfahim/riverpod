import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/providers/cart_provider.dart';
import 'package:riverpod_test/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartNotifierProvider);
    final cartTotal = ref.watch(cartTotalProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            Column(
              children: cartProducts.map((product) {
                return Row(
                  children: [
                    Image.asset(product.image, width: 60, height: 60),
                    SizedBox(width: 8),
                    Text(product.title),
                    Expanded(child: SizedBox()),
                    Text(product.price.toString() + "\$"),
                  ],
                );
              }).toList(), // output cart products here
            ),

            Center(child: Text("Total " + cartTotal.toString())),

            // output totals here
          ],
        ),
      ),
    );
  }
}
