import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter_tutorial/providers/cart_provider.dart';

import '../screens/cart/cart_sreen.dart';

class CartIcon extends ConsumerWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numOfItemInCart = ref.watch(cartNotifierProvider).length;
    return Stack(
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CartScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.shopping_bag)),
        Positioned(
          top: 5,
          left: 5,
          child: Container(
            width: 18,
            height: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.redAccent,
            ),
            child: Text(
              numOfItemInCart.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
