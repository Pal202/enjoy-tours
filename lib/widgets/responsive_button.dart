import 'package:enjoy_tours/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.width=120, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(236, 5, 101, 114),
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true ? MainAxisAlignment.spaceAround : MainAxisAlignment.center,
          children: [
            isResponsive==true ? AppText(
              text: "Book Trip Now",
              color: Colors.white,
              size: 15,
            ) : Container(),
            Text(
              '>>>',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
