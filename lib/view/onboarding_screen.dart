import 'package:brand_store_app/view/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 510,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
            ),
            child: Image.asset(
              "assets/onboarding.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              top: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Find The\n',
                      style: GoogleFonts.imprima(
                          fontSize: 42,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                  TextSpan(
                      text: 'Best Collections',
                      style: GoogleFonts.imprima(
                          fontSize: 42,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ])),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Get your dream item easily with FashionHub\n',
                      style: GoogleFonts.imprima(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(121, 119, 128, 1))),
                  TextSpan(
                      text: 'and get other intersting offer',
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
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(255, 255, 255, 1))),
                      onPressed: () {},
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(13, 13, 14, 1)),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(255, 122, 0, 1),
                        ),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const Login();
                        }));
                      },
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
