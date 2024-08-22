import 'package:brand_store_app/controllers/product_controller.dart';
import 'package:brand_store_app/models/mens_model.dart';
import 'package:brand_store_app/view/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final MensModel item;
  const DetailScreen({
    super.key,
    required this.item,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _selectIndex = 0;

  Widget sizeChange(String size, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectIndex = index;
        });
      },
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: _selectIndex == index
                    ? const Color.fromRGBO(13, 13, 14, 1)
                    : Colors.white),
            child: Text(
              size,
              style: GoogleFonts.imprima(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: _selectIndex == index
                      ? const Color.fromRGBO(255, 255, 255, 1)
                      : const Color.fromRGBO(121, 119, 128, 1)),
            ),
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details",
            style: GoogleFonts.imprima(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: GestureDetector(child: const Icon(Icons.bookmark_border)),
          )
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 30, top: 30, right: 40, bottom: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: SizedBox(
                height: 430,
                width: double.infinity,
                child: Image.asset(
                  item.image!,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Premium\n',
                        style: GoogleFonts.imprima(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(13, 13, 14, 1))),
                    TextSpan(
                      text: widget.item.name!,
                      style: GoogleFonts.imprima(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(13, 13, 14, 1),
                      ),
                    ),
                  ]),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/color1.png'))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/color2.png'))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/color3.png'))),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Text("Size",
                style: GoogleFonts.imprima(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(13, 13, 14, 1))),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  sizeChange("S", 0),
                  sizeChange("M", 1),
                  sizeChange("L", 2),
                  sizeChange("XL", 3),
                  sizeChange("XXL", 4),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Text("\$${widget.item.price}",
                    style: GoogleFonts.imprima(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary)),
                const Spacer(),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(255, 122, 0, 1)),
                        minimumSize: MaterialStatePropertyAll(Size(162, 62)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(90))))),
                    onPressed: () {
                      Provider.of<ProductController>(context, listen: false)
                          .addtoCart(widget.item);
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const CartScreen();
                      }));
                    },
                    child: Text("Add To Cart",
                        style: GoogleFonts.imprima(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
