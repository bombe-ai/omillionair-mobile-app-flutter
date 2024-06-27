import 'package:flutter/material.dart';

class HeroSection extends StatefulWidget {
  HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/nav_bar_top.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(height: 5, width: 5),
            Column(
              children: [
                Text(
                  "Wallet Funds",
                  style: TextStyle(
                      fontSize: 10, color: Color.fromARGB(255, 255, 255, 255)),
                ),
                const SizedBox(height: 5, width: 5),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 2,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AED: ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "45",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                )
              ],
            )
          ]),
          const SizedBox(height: 10, width: double.infinity),
        ],
      ),
    );
  }
}
