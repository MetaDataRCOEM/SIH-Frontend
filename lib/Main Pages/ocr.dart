import 'dart:io';
import 'package:dio/dio.dart';
import 'package:Mnrega/Login.dart';
import 'package:Mnrega/Main%20Pages/About.dart';
import 'package:Mnrega/Main%20Pages/Background.dart';
import 'package:Mnrega/Main%20Pages/Home.dart';
import 'package:Mnrega/Main%20Pages/Objective.dart';
import 'package:Mnrega/Main%20Pages/Stakeholders.dart';
import 'package:Mnrega/Main%20Pages/TenEntitlement.dart';
import 'package:Mnrega/Main%20Pages/Works.dart';
import 'package:Mnrega/form.dart';
import 'package:flutter/material.dart';
// import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OCR extends StatefulWidget {
  const OCR({Key? key}) : super(key: key);

  @override
  State<OCR> createState() => _OCRState();

  static void getImage(ImageSource camera) {}
}

class _OCRState extends State<OCR> {
  XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MNREGA"),
        backgroundColor: Color.fromARGB(255, 30, 56, 100),
      ),
      drawer: const NavigationDrawer(),
      body: Center(
          child: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (imageFile != null) Image.file(File(imageFile!.path)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.grey,
                            shadowColor: Colors.grey[400],
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {
                            getImage(ImageSource.camera);
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  size: 30,
                                ),
                                Text(
                                  "Camera",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey[600]),
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )),
      )),
    );
  }

  void getImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage != null) {
        // textScanning = false;
        imageFile = pickedImage;
        setState(() {});
        // getRecognisedText(pickedImage);
      }
    } catch (e) {
      // textScanning = false;
      imageFile = null;
      // scannedText = "Error occured while scanning";
      setState(() {});
    }
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 0,
          children: [
            ListTile(
              leading: const Icon(Icons.location_pin),
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_pin),
              title: const Text(
                'Background',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Backgroundpage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text(
                'About MGNREGA',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.games_outlined),
              iconColor: Colors.blueAccent,
              title: const Text(
                'Objectives',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.blueAccent,
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ObjectivePage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.stacked_bar_chart),
              title: const Text(
                'Stakeholders',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const StakeholderPage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.verified_user),
              title: const Text(
                'Ten Entitlement',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TenEntitlementPage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text(
                'Works',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const WorkPage(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            ListTile(
              leading: const Icon(Icons.share_location_sharp),
              title: const Text(
                'Search Assets',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => myForm(),
                ));
              },
            ),
            const Divider(
              color: Colors.blueAccent,
            ),
            // ListTile(
            //   leading: const Icon(Icons.my_location),
            //   title: const Text('Nearby Assets'),
            //   onTap: () {
            //     // Navigator.of(context).push(MaterialPageRoute(
            //     //   builder: (context) => const NearbyAssetsPage(),
            //     // ));
            //   },
            // ),
            // const Divider(
            //   color: Colors.blueAccent,
            // ),
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
              },
            ),
          ],
        ),
      );
}
