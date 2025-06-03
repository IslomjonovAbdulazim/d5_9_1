import 'package:d5_9_1/pages/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image.asset("assets/onboarding.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Fall in Love with Coffee in Blissful Delight",
              style: GoogleFonts.sora(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
              style: GoogleFonts.sora(
                color: Color(0xffA2A2A2),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: CupertinoButton(
                color: Color(0xffC67C4E),
                onPressed: () {
                  Get.off(MainPage());
                },
                child: Center(
                  child: Text(
                    "Get Started",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
