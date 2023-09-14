import 'package:flutter/material.dart';
import 'package:kqr/constants/colors.dart';
import 'package:kqr/constants/functions.dart';

class GenerateQr extends StatefulWidget {
  const GenerateQr({super.key});

  @override
  State<GenerateQr> createState() => _GenerateQrState();
}

class _GenerateQrState extends State<GenerateQr> {
  String link = '';
  @override
  Widget build(BuildContext context) {
    final font = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Generate QR',
                style: TextStyle(
                  fontSize: font.headlineSmall!.fontSize, color: darkTextColor,
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
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter the link',
                        style: TextStyle(
                          fontSize: font.titleMedium!.fontSize,
                          color: darkTextColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          initialValue: link,
                          onTapOutside: (event) {
                            FocusScope.of(context).unfocus();
                          },
                          style: TextStyle(
                              color: darkTextColor,
                              fontSize: font.titleMedium!.fontSize,
                              fontFamily: 'Carme'),
                          decoration: InputDecoration(
                            fillColor: secondaryColor,
                            filled: true,
                            hintText: 'Enter link here',
                            hintStyle: TextStyle(
                              fontSize: font.titleMedium!.fontSize,
                              fontFamily: 'CarroisGothic',
                              color: lightTextColor,
                            ),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  link = pasteFromClipboard();
                                });
                                print(link);
                              },
                              icon: const ImageIcon(
                                AssetImage('assets/icons/paste.png'),
                                color: darkTextColor,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(size.width * 0.6, 50),
                    backgroundColor: accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadowColor: darkTextColor),
                child: Text(
                  'Generate',
                  style: TextStyle(
                    fontSize: font.titleMedium!.fontSize,
                    color: primaryColor,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              Text(
                'Made in 💙 by Ashutosh Kapoor',
                style: TextStyle(
                  fontSize: font.titleMedium!.fontSize,
                  color: darkTextColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
