import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:omillionare/widgets/common/countdown_timer.dart';
import 'package:omillionare/widgets/dashboard_page/home_body_carousel.dart';

class PlayNow extends StatefulWidget {
  PlayNow({super.key});

  @override
  State<PlayNow> createState() => _PlayNowState();
}

class _PlayNowState extends State<PlayNow> {
  final endDate = DateTime.now().add(Duration(days: 2));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        // color: Color.fromARGB(137, 194, 0, 0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          const SizedBox(height: 20),
          Container(
            width: 350,
            padding: const EdgeInsets.only(bottom: 10, top: 10, left: 20, right: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 0, 182, 17), // Start color
                  Color.fromARGB(255, 0, 122, 51), // End color
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'NEXT DRAW DATE',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 206, 0, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w600
                        )
                      ),
                    Text(
                      _formatEndDate(endDate),
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      )
                    ),
                  ],
                ),
                CountdownTimer(endDate: endDate),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            child: BodyCarousel(),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 255, 255), padding: EdgeInsets.only(left: 25, right: 25, top: 14, bottom: 14), elevation: 3),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('DRAW RESULTS', style: TextStyle(color: Color.fromARGB(255, 0, 122, 51), fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 255, 206, 0), padding: EdgeInsets.only(left: 25, right: 12.5, top: 14, bottom: 14), elevation: 3),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('PLAY NOW', style: TextStyle(color: Color.fromRGBO(24, 29, 165, 1), fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(width: 5),
                    Icon(Icons.chevron_right_outlined, color: Color.fromRGBO(24, 29, 165, 1), size: 25),
                  ],
                ),
                onPressed: () {},
              )
            ]
          )
        ],
      ),
    );
  }
}

  String _formatEndDate(DateTime endDate) {
    final formatter = DateFormat('MMM d, yyyy');
    return formatter.format(endDate);
  }