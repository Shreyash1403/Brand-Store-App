import 'dart:ui';

import 'package:brand_store_app/controllers/product_controller.dart';
import 'package:brand_store_app/view/cart_screen.dart';
import 'package:brand_store_app/view/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  int bottomindex = 0;

  @override
  Widget build(BuildContext context) {
    final productController = Provider.of<ProductController>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/home_icon.png",
                    )),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/home_icon2.png")),
                const SizedBox(
                  height: 34,
                ),
              ],
            ),
            Text(
              "Explore",
              style: GoogleFonts.imprima(
                  fontSize: 36,
                  color: const Color.fromRGBO(13, 13, 14, 1),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Best trendy collection!",
              style: GoogleFonts.imprima(
                  fontSize: 18,
                  color: const Color.fromRGBO(121, 119, 128, 1),
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryButton("All", 0),
                  categoryButton("Men", 1),
                  categoryButton("Women", 2),
                  categoryButton("Kids", 3),
                  categoryButton("Others", 4),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30,
                  childAspectRatio: 2.5 / 4,
                ),
                itemCount: productController.mensClothesList.length,
                itemBuilder: (context, index) {
                  final item = productController.mensClothesList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return DetailScreen(item: item);
                      }));
                    },
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image.asset(item.image!),
                                Positioned(
                                  right: 10,
                                  bottom: -22,
                                  child: IconButton(
                                    onPressed: () {
                                      Provider.of<ProductController>(context,
                                              listen: false)
                                          .addtoCart(item);
                                    },
                                    icon: Container(
                                      height: 36,
                                      width: 36,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          width: 5,
                                        ),
                                        color:
                                            const Color.fromRGBO(13, 13, 14, 1),
                                      ),
                                      child: const Icon(
                                        Icons.shopping_bag,
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "\$${item.price}",
                            style: GoogleFonts.imprima(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: const Color.fromRGBO(13, 13, 14, 1),
                            ),
                          ),
                          Text(
                            item.name!,
                            style: GoogleFonts.imprima(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color.fromRGBO(121, 119, 128, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomindex,
          onTap: (index) {
            setState(() {
              bottomindex = index;
            });
            if (bottomindex == 2) {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return CartScreen();
                },
              ));
            }
            setState(() {
              bottomindex = 0;
            });
          },
          selectedItemColor: const Color.fromRGBO(255, 122, 0, 1),
          unselectedItemColor: const Color.fromRGBO(13, 13, 14, 1),
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ]),
    );
  }

  Widget categoryButton(String name, int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _index = index;
          });
        },
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: _index == index
                    ? const Color.fromRGBO(255, 122, 0, 1)
                    : const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Text(
                name,
                style: GoogleFonts.imprima(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: _index == index
                      ? const Color.fromRGBO(255, 255, 255, 1)
                      : Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 23,
            )
          ],
        ));
  }
}
