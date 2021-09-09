// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselSlider(
        options: CarouselOptions(height: 400.0),
        items: [1, 2].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.blue),
                  child: (i == 1)
                      ? SvgPicture.asset(
                          'assets/images/pac_man.svg',
                          semanticsLabel: 'Pac-man text',
                        )
                      : SvgPicture.network(
                          'https://upload.wikimedia.org/wikipedia/commons/4/49/Pacman.svg',
                          semanticsLabel: 'Pac-man circle',
                        ));
            },
          );
        }).toList(),
      ),
    );
  }
}
