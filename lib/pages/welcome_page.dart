import 'package:enjoy_tours/widgets/app_largetext.dart';
import 'package:enjoy_tours/widgets/app_text.dart';
import 'package:enjoy_tours/widgets/responsive_button.dart';
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
    'https://i.pinimg.com/564x/55/29/fb/5529fb05282b1a328251486907f331a5.jpg',
    'https://i.pinimg.com/564x/55/29/fb/5529fb05282b1a328251486907f331a5.jpg',
    'https://i.pinimg.com/564x/55/29/fb/5529fb05282b1a328251486907f331a5.jpg',
  ];
  List text = ['Mountain', 'Ocean', 'Forest'];
  List sub_text = [
    'Mountain hikes give you an incredible sense of freedom along with endurance test.',
    'Ocean refers to pleasure travel in which the sea is the primary focus of activities.',
    'Forests and other wild places can promote greater understanding and appreciation of nature.',
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
              margin: EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 'Trips'),
                        AppText(
                          text: text[index],
                          size: 32,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text: sub_text[index],
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        ResponsiveButton(
                          width: 100,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 24 : 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? Color.fromARGB(236, 5, 101, 114)
                                : Color.fromARGB(236, 5, 101, 114)
                                    .withOpacity(0.4),
                          ),
                        );
                      }),
                    )
                  ]),
            ),
          );
        },
      ),
    );
  }
}
