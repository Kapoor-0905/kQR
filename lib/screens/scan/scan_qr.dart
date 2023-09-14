import 'package:flutter/material.dart';
import 'package:kqr/constants/colors.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({super.key});

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  @override
  Widget build(BuildContext context) {
    final font = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  'Scan QR',
                  style: TextStyle(
                    fontSize: font.headlineSmall!.fontSize,
                    color: darkTextColor,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.6,
                  child: const Divider(
                    color: lightTextColor,
                  ),
                ),
                SizedBox(height: size.width * 0.1),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
                  child: Container(
                    width: size.width * 0.5,
                    height: size.width * 0.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: secondaryColor),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Made in 💙 by Ashutosh Kapoor',
              style: TextStyle(
                fontSize: font.titleMedium!.fontSize,
                color: darkTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
