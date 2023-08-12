import 'package:enjoy_tours/widgets/app_largetext.dart';
import 'package:enjoy_tours/widgets/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "https://4kwallpapers.com/images/wallpapers/mountains-illustration-flight-night-sunset-gradient-1080x2160-2734.png":
        "Balloning",
    "https://4kwallpapers.com/images/wallpapers/mountains-illustration-flight-night-sunset-gradient-1080x2160-2734.png":
        "Hiking",
    "https://4kwallpapers.com/images/wallpapers/mountains-illustration-flight-night-sunset-gradient-1080x2160-2734.png":
        "Kayaking",
    "https://4kwallpapers.com/images/wallpapers/mountains-illustration-flight-night-sunset-gradient-1080x2160-2734.png":
        "Snorkling",
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Color.fromARGB(236, 5, 101, 114),
                ),
                Expanded(child: Container()),
                Container(
                  margin: EdgeInsets.only(right: 24),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: AppLargeText(text: 'Discover'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(
                    color: Color.fromARGB(236, 5, 101, 114), radius: 4),
                tabs: [
                  Tab(text: 'Places'),
                  Tab(text: 'Inspiration'),
                  Tab(text: 'Emotions'),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9q8A429NMCoqjTCakfLC5gNpxrORBhZuySQ&usqp=CAU'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
                Text('There'),
                Text('Bye'),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(
                  text: 'Explore more',
                  size: 22,
                ),
                AppText(
                  text: 'See all',
                  color: Color.fromARGB(255, 0, 91, 165),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 120,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 32),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://4kwallpapers.com/images/wallpapers/mountains-illustration-flight-night-sunset-gradient-1080x2160-2734.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          child: AppText(
                            text: "Hiking",
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
