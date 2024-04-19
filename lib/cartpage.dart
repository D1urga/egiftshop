import 'package:egift_shop/cartcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CartCard(),
            Text(
              "previous order",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 183, 143, 22)),
            ),
            CartCard(),
            CartCard(),
            CartCard(),
            CartCard(),
            CartCard(),
            CartCard(),
            CartCard()
          ],
        ),
      ),
    );
  }
}
