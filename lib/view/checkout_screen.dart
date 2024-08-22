import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Checkout",
            style: GoogleFonts.imprima(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.secondary)),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).colorScheme.secondary,
              )),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, bottom: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivery Address",
              style: GoogleFonts.imprima(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(121, 119, 128, 1)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset("assets/map.png"),
                const SizedBox(
                  width: 15,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '25/3 Housing Estate,\n',
                      style: GoogleFonts.imprima(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary)),
                  TextSpan(
                      text: 'Sylhet',
                      style: GoogleFonts.imprima(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).colorScheme.secondary)),
                ])),
                const Spacer(),
                Text(
                  "Change",
                  style: GoogleFonts.imprima(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Icon(
                  Icons.access_time_sharp,
                  color: Color.fromRGBO(123, 123, 141, 1),
                  size: 28,
                  weight: 28,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text("Delivered in next 7 days",
                    style: GoogleFonts.imprima(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary)),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Text("Payment Method",
                style: GoogleFonts.imprima(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(121, 119, 128, 1))),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('assets/visa.png'),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/american.png'),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/master.png'),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/paypal.png'),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/ipay.png'),
                const SizedBox(
                  width: 30,
                )
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Center(
              child: Text("Add Voucher",
                  style: GoogleFonts.imprima(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1))),
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Note:',
                  style: GoogleFonts.imprima(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 0, 0, 1))),
              TextSpan(
                  text: ' Use your order id at the payment. Your Id \n',
                  style: GoogleFonts.imprima(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1))),
              TextSpan(
                  text: '#154619',
                  style: GoogleFonts.imprima(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary)),
              TextSpan(
                  text:
                      ' if you forget to put your order id we can’t confirm the payment.',
                  style: GoogleFonts.imprima(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1))),
            ])),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Text(
                  "Total Items (3)",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
                const Spacer(),
                Text(
                  "\$116.00",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Standard Delivery",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
                const Spacer(),
                Text(
                  "\$12.00",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Total Payment",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(121, 119, 128, 1)),
                ),
                const Spacer(),
                Text(
                  "\$126.00",
                  style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.secondary),
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(255, 122, 0, 1)),
                      minimumSize: MaterialStatePropertyAll(Size(162, 62)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(90))))),
                  onPressed: () {},
                  child: Text("Pay Now",
                      style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                          color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}
