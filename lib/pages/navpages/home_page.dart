import 'package:enjoy_tours/widgets/app_largetext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
                  margin: EdgeInsets.only(right: 20),
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
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: AppLargeText(text: 'Discover'),
          ),
        ],
      ),
    );
  }
}
