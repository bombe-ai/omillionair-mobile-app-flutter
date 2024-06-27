import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:url_launcher/url_launcher.dart';

class HeadCarousel extends StatefulWidget {
  HeadCarousel({super.key});


  @override
  State<HeadCarousel> createState() => _HeadCarouselState();
}

class _HeadCarouselState extends State<HeadCarousel> {

  List<StaticImages> images = [
    StaticImages(imagePath: 'assets/images/advertise0.png', link: 'https://flutter.dev'),
    StaticImages(imagePath: 'assets/images/advertise1.png', link: 'https://github.com'),
    StaticImages(imagePath: 'assets/images/advertise0.png', link: 'https://youtube.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          transform: Matrix4.translationValues(0.0, -110.0, 0.0),
          width: 410,
          height: 235,
          // color: const Color.fromARGB(111, 33, 149, 243),
          child: Swiper(
            itemBuilder: (BuildContext context, int index,) {
              return InkWell(
                  onTap: () => _launchUrl(images[index]),
                  child: Image.asset(images[index].imagePath, fit: BoxFit.contain),
                );
            },
            itemCount: images.length,
            autoplay: true,
            // pagination: SwiperPagination(),
            // control: SwiperControl(),
          ),
        ),
      ]
    );
  }
}

Future<void> _launchUrl(StaticImages data) async {
  final Uri _url = Uri.parse(data.link);

  if (!await launchUrl(_url)) {
    print("CANNOT LAUNCH URL");
  }
}

class StaticImages {
  final String imagePath;
  final String link;

  StaticImages({
    required this.imagePath,
    required this.link,
  });
}