import 'package:egift_shop/card.dart';
import 'package:flutter/cupertino.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProductCard(
              p: "images/p1.jpg",
              name: "headphone",
              price: "₹ 2499",
            ),
            ProductCard(
              p: "images/p2.jpg",
              name: "shoes men",
              price: "₹ 4999",
            ),
            ProductCard(
              p: "images/p3.jpg",
              name: "watch",
              price: "₹ 7999",
            ),
            ProductCard(
              p: "images/p4.jpg",
              name: "perfume",
              price: "₹ 899",
            ),
            ProductCard(
              p: "images/p5.jpg",
              name: "bag LV",
              price: "₹ 7999",
            ),
          ],
        ),
      ),
    );
  }
}
