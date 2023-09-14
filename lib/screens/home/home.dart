import 'package:flutter/material.dart';
import 'package:kqr/constants/colors.dart';
import 'package:kqr/screens/generate/generate_qr.dart';
import 'package:kqr/screens/scan/scan_qr.dart';
import 'package:kqr/widgets/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> tabPages = const <Widget>[
    GenerateQr(),
    ScanQr(),
  ];
  List<Tab> tabs = const <Tab>[
    Tab(text: 'Generate'),
    Tab(text: 'Scan'),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final font = Theme.of(context).textTheme;
    return Scaffold(
      drawer: appDrawer(width: size.width * 0.6, height: size.height),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const ImageIcon(AssetImage('assets/icons/menu.png')),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          'kQR',
          style: TextStyle(
              color: darkTextColor, fontSize: font.headlineLarge!.fontSize),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  // height: 50,
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(9, 8, 9, 8),
                    child: TabBar(
                      unselectedLabelColor: lightTextColor,
                      labelStyle: TextStyle(
                          // fontWeight: FontWeight.w600,
                          fontFamily: 'CarroisGothic',
                          fontSize: font.titleMedium!.fontSize),
                      labelColor: darkTextColor,
                      indicator: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      tabs: tabs,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: tabPages,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
