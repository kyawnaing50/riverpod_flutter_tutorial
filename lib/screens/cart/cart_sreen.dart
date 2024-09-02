import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter_tutorial/providers/cart_provider.dart';

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
    final total = ref.watch(cartTotalProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: cartProducts.map((products) {
                  return Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          products.image,
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(products.title),
                        const Expanded(child: SizedBox()),
                        Text('USD: ${products.price}')
                      ],
                    ),
                  );
                }).toList(), // output cart products here
              ),
              // output totals here
              Text('Total- USD: $total')
            ],
          ),
        ),
      ),
    );
  }
}
