import 'package:flutter/material.dart';
import 'package:kqr/constants/colors.dart';
import 'package:kqr/models/drawer_tile.dart';

Drawer appDrawer({required double width, required double height}) => Drawer(
      width: width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      backgroundColor: accentColor,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        children: <Widget>[
          SizedBox(
            height: height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    DrawerHeader(
                      child: Column(
                        children: [
                          Text(
                            'kQR',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 35,
                            ),
                          ),
                          SizedBox(height: 5),
                          Divider(
                            color: primaryColor,
                            thickness: 2,
                            indent: 5,
                            endIndent: 5,
                          )
                        ],
                      ),
                    ),
                    DrawerTile(
                        title: 'About us', image: 'assets/icons/info.png'),
                    DrawerTile(
                        title: 'Share with friends',
                        image: 'assets/icons/share.png'),
                    DrawerTile(
                        title: 'Feedback', image: 'assets/icons/feedback.png'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: width / 2,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
