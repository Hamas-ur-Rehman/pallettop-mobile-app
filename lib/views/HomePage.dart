// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';

import 'package:pallettop/views/contact.dart';
import 'package:pallettop/views/quote.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../widgets/customcard.dart';
import 'home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  final _formKey = GlobalKey<FormState>();
  final formKey = GlobalKey<FormState>();

  var currentPage = 0;
  List<BannerModel> listBanners = [
    BannerModel(id: "0", imagePath: 'images/banner0.jpg'),
    BannerModel(id: "1", imagePath: 'images/banner1.jpg'),
    BannerModel(id: "2", imagePath: 'images/banner2.jpg'),
    BannerModel(id: "3", imagePath: 'images/banner3.jpg'),
    BannerModel(id: "4", imagePath: 'images/banner4.jpg'),
  ];
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Future<void> _makePhoneCall(String phoneNumber) async {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    }

    launchURL() async {
      const String homeLat = "52.493576";
      const String homeLng = "-1.81083";

      const String googleMapslocationUrl =
          "https://www.google.com/maps/search/?api=1&query=$homeLat,$homeLng";

      final String encodedURl = Uri.encodeFull(googleMapslocationUrl);

      if (await canLaunchUrlString(encodedURl)) {
        await launchUrlString(encodedURl);
      }
    }

    launchweb() async {
      const String web = "https://www.pallettop.com";

      final String encodedURl = Uri.encodeFull(web);

      if (await canLaunchUrlString(encodedURl)) {
        await launchUrlString(encodedURl);
      }
    }

    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: FancyBottomNavigation(
            key: bottomNavigationKey,
            tabs: [
              TabData(iconData: Icons.home, title: "Home"),
              TabData(iconData: Icons.info, title: "About"),
              TabData(iconData: Icons.mail, title: "Contact"),
              TabData(iconData: Icons.request_quote_rounded, title: "Qoute"),
            ],
            onTabChangedListener: (position) {
              setState(() {
                currentPage = position;
              });
            },
          ),
          body: currentPage == 0
              ? Home(listBanners: listBanners)
              : currentPage == 1
                  ? Scaffold(
                      body: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, top: 30.0, bottom: 30),
                              child: Text("About",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),
                            CustomCard2(
                                imgpath: "images/truck.png",
                                title: "Who we are",
                                body:
                                    "Pallettop is a well-established pallet company that collects and delivers pallets through out the UK. We supply a wide range of customers with new, reconditioned and pallets. Our customer base covers all sectors from transport and distribution to retail outlets and independent local businesses located in the UK"),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _makePhoneCall('+4407521754503');
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 70,
                                  width: double.infinity,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(children: const [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 0, 20, 0),
                                          child: Icon(Icons.phone),
                                        ),
                                        Text(
                                          "+44 07521754503",
                                          style: TextStyle(
                                              fontFamily: 'lato', fontSize: 18),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  final FancyBottomNavigationState fState =
                                      bottomNavigationKey.currentState
                                          as FancyBottomNavigationState;
                                  fState.setPage(2);
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 70,
                                  width: double.infinity,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(children: const [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(10, 0, 20, 0),
                                          child: Icon(Icons.email),
                                        ),
                                        Text(
                                          "info@pallettop.com",
                                          style: TextStyle(
                                              fontFamily: 'lato', fontSize: 18),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                launchweb();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 70,
                                  width: double.infinity,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    elevation: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(children: const [
                                        Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 20, 0),
                                            child: Icon(Icons.language)),
                                        Text(
                                          "www.pallettop.com",
                                          style: TextStyle(
                                              fontFamily: 'lato', fontSize: 18),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                launchURL();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  elevation: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.location_on),
                                          SizedBox(width: 5),
                                          Text(
                                            'Location',
                                            style: TextStyle(
                                                fontFamily: 'lato',
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          "82 Beafourt Avenue B34 6AE,Birmingham United Kingdom",
                                          style: TextStyle(
                                              fontFamily: 'lato', fontSize: 18),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          "images/map.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                            )
                          ]),
                    ))
                  : currentPage == 2
                      ? Contact(formKey: _formKey)
                      : GetQuote(formKey: formKey)),
    );
  }
}
