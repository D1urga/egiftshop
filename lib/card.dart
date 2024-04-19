import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String p;
  final String name;
  final String price;
  const ProductCard(
      {super.key, required this.p, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        width: double.infinity,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 229, 243, 243)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "10 piece left only",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: Center(
                child: Image.asset(
                  p,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "boAt wireless on-Ear headphones 170 TWS",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 40,
              width: 320,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 169, 161, 94),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Center(
                child: Text(
                  "limited time deal",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(price,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text("64% Off",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    width: 40,
                  ),
                  Text("free delivery",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Add to cart",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 0, 175, 244),
                        fontWeight: FontWeight.w500,
                      )),
                  Text("chech reviews",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 1, 18, 22),
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
