import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
<<<<<<< HEAD:lib/widgets/dashboard_page/home_body_carousel.dart
import 'package:omillionare/gen/assets.gen.dart';
=======
import 'package:go_router/go_router.dart';
>>>>>>> 185924bad9c5a8a774210facf4fb0d71b7de6816:lib/Widgets/home_page/home_body_carousel.dart

class BodyCarousel extends StatefulWidget {
  BodyCarousel({super.key});


  @override
  State<BodyCarousel> createState() => _BodyCarouselState();
}

class _BodyCarouselState extends State<BodyCarousel> {

  List<StaticImages> images = [
    StaticImages(imagePath: Assets.images.homeFirstBanner.path, link: 'https://flutter.dev'),
    StaticImages(imagePath: 'assets/images/advertise1.png', link: 'https://github.com'),
    StaticImages(imagePath: Assets.images.homeFirstBanner.path, link: 'https://youtube.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 410,
          height: 235,
          // color: const Color.fromARGB(111, 33, 149, 243),
          child: Swiper(
            itemBuilder: (BuildContext context, int index,) {
              return InkWell(
                  onTap: () => context.go('/login'),
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

class StaticImages {
  final String imagePath;
  final String link;

  StaticImages({
    required this.imagePath,
    required this.link,
  });
}