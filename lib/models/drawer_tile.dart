import 'package:flutter/material.dart';
import 'package:kqr/constants/colors.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final String image;
  const DrawerTile({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    final font = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.fromLTRB(11, 17, 18, 17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: lightAccentColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image),
            Text(title,
                style: TextStyle(
                  fontSize: font.titleMedium!.fontSize,
                  color: primaryColor,
                )),
          ],
        ),
      ),
    );
  }
}
