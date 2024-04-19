import 'package:egift_shop/card.dart';
import 'package:egift_shop/cartpage.dart';
import 'package:egift_shop/mainPage.dart';
import 'package:egift_shop/not.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: Color.fromARGB(255, 255, 255, 255))),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<Widget> list = const [
  MainPage(),
  CartPage(),
  NotificationPage(),
];
int activeIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        title: const Text(
          "E-gift shop",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        leading: Builder(
            builder: (context) => InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Icon(
                  Icons.menu,
                  size: 20,
                ))),
        actions: const [
          Icon(
            Icons.favorite_outline,
            size: 20,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.settings,
            size: 20,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      drawer: Drawer(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const CircleAvatar(
              radius: 55,
              backgroundColor: Color.fromARGB(255, 205, 204, 204),
              child: Text(
                "D",
                style: TextStyle(
                    fontSize: 34, color: Color.fromARGB(255, 57, 57, 57)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Deepanshu",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Text(
              "@deepanshu_1",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 270,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 215, 224, 232),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.more_vert,
                      size: 21,
                    ),
                    Text(
                      "Profile",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 21,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 270,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 215, 224, 232),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.more_vert,
                      size: 21,
                    ),
                    Text(
                      "Orders",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 21,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 270,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 215, 224, 232),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.more_vert,
                      size: 21,
                    ),
                    Text(
                      "Support",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 21,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            const Text("version : 1.1.01")
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            list[activeIndex],
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeIndex = 0;
                      });
                    },
                    child: const Icon(
                      Icons.home_outlined,
                      size: 23,
                      color: Color.fromARGB(255, 58, 58, 58),
                    ),
                  ),
                  const Icon(
                    Icons.border_all_rounded,
                    size: 20,
                    color: Color.fromARGB(255, 58, 58, 58),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeIndex = 1;
                      });
                    },
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 20,
                      color: Color.fromARGB(255, 58, 58, 58),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeIndex = 2;
                      });
                    },
                    child: const Icon(
                      Icons.notifications_outlined,
                      size: 20,
                      color: Color.fromARGB(255, 58, 58, 58),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
