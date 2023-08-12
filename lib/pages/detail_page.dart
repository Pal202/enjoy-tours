import 'package:enjoy_tours/widgets/app_buttons.dart';
import 'package:enjoy_tours/widgets/app_largetext.dart';
import 'package:enjoy_tours/widgets/app_text.dart';
import 'package:enjoy_tours/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://4kwallpapers.com/images/wallpapers/mountains-illustration-flight-night-sunset-gradient-1080x2160-2734.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              top: 310,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 550,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Yosemite",
                          color: Colors.black.withOpacity(0.8),
                          size: 28,
                        ),
                        AppLargeText(
                          text: "\$ 250",
                          color: Colors.black45,
                          size: 26,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        AppText(
                          text: "USA, California",
                          color: Colors.black45,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: gottenStars > index
                                  ? Colors.orangeAccent
                                  : Colors.black45,
                            );
                          }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: "(4.0)",
                          color: Colors.black45,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    AppLargeText(
                      text: "People",
                      color: Colors.black87,
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: "Number of people in your group",
                      color: Colors.black54,
                      size: 14,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 15),
                            child: AppButtons(
                              size: 50,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey.withOpacity(0.3),
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey.withOpacity(0.2),
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "Description",
                      color: Colors.black87,
                      size: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppText(
                      text:
                          "You should go for a travel. Travelling helps get rid of pressure and stress. Go to the Mountains to explore the nature.",
                      color: Colors.black54,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(size: 60, 
                  color: Colors.black54, 
                  backgroundColor: Colors.white, 
                  borderColor: Colors.black54,
                  isIcon: true,
                  icon: Icons.favorite_border,
                  ),
                  SizedBox(width: 20,),
                  ResponsiveButton(
                    isResponsive: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
