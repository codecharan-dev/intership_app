import 'package:flutter/material.dart';

Widget lifePathNumberContainer({required String description, required String subtitle}) {
  return Container(
    width: 380,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        const Divider(color: Colors.black, indent: 10, endIndent: 10),
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            subtitle,
            softWrap: true,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),
        ),
      ],
    ),
  );
}
