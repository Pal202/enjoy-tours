import 'package:enjoy_tours/widgets/app_largetext.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    'https://w0.peakpx.com/wallpaper/533/765/HD-wallpaper-night-landscape-art-cartoon-design-moon-moons-nature-tree-vector.jpg',
    'https://w0.peakpx.com/wallpaper/533/765/HD-wallpaper-night-landscape-art-cartoon-design-moon-moons-nature-tree-vector.jpg',
    'https://w0.peakpx.com/wallpaper/533/765/HD-wallpaper-night-landscape-art-cartoon-design-moon-moons-nature-tree-vector.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppLargeText(text: 'Trips'),
                  ],
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
