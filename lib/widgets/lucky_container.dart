import 'package:flutter/material.dart';

Widget luckyContainer({
  required BuildContext context,
  required String imagePath,
  required double top,
  required String title,
  required String subTitle,
  required VoidCallback onTap
}) {
  return GestureDetector(
  onTap: onTap,
  child: SizedBox(
    // color: Colors.yellow,
    height: 84,
    width: 180,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: top, left: 5), // top: 7
          child: CircleAvatar(
            backgroundImage: AssetImage(imagePath), // "assets/images/123.jpeg"
            maxRadius: 23,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, left: 4),
              child: 
              Text(
                
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 1, left: 5),
              child: 
              Text(
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                subTitle,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
      );
}
