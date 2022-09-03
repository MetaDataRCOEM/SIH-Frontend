import 'package:Mnrega/Emp%20Pages/EmpLogin.dart';
import 'package:Mnrega/MSE%20Pages/MSELogin.dart';
import 'package:Mnrega/Main%20Pages/Home.dart';
import 'package:Mnrega/form.dart';
import 'package:Mnrega/query.dart';
import 'package:flutter/material.dart';
import 'package:Mnrega/Main%20Pages/Background.dart';
import 'package:Mnrega/Main%20Pages/About.dart';
import 'package:Mnrega/Main%20Pages/Objective.dart';
import 'package:Mnrega/Main%20Pages/Stakeholders.dart';
import 'package:Mnrega/Main%20Pages/TenEntitlement.dart';
import 'package:Mnrega/Main%20Pages/Works.dart';
import 'package:Mnrega/Main%20Pages/SearchAssets.dart';
// import 'package:Mnrega/NearbyAssets.dart';
import 'package:Mnrega/Login.dart';
import 'package:Mnrega/MSE%20Pages/MSEProfile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MNREGA"),
        backgroundColor: Color.fromARGB(255, 30, 56, 100),
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: Color.fromARGB(255, 71, 94, 142),
      body: isMobile
          ? SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 1, 5, 18),
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(4, 4)),
                        ],
                      ),
                      child: Image.asset(
                        'assets/mnrega.png',
                        height: 150.0,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    const Text(
                      "MNREGA",
                      style: TextStyle(
                        color: Color.fromARGB(255, 8, 10, 20),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Login as",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                          color: Color.fromARGB(255, 33, 56, 95),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MSELogin()));
                          },
                          child: const Text(
                            "MSE Officer",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'Abel',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50.0,
                        ),
                        RaisedButton(
                          color: Color.fromARGB(255, 144, 150, 161),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmpLogin(),
                              ),
                            );
                          },
                          child: const Text(
                            "Employee",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 29, 28, 28),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          : SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 1100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/mnrega.png'),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text(
                      "MNREGA",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Login as",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blueAccent),
                          child: RaisedButton(
                            color: Colors.blueAccent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MSELogin()));
                            },
                            child: const Text(
                              "MSE Officer",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50.0,
                        ),
                        RaisedButton(
                          color: Colors.blueAccent,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmpLogin(),
                              ),
                            );
                          },
                          child: const Text(
                            "Employee",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
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
            const Divider(
              color: Colors.blueAccent,
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
              title: const Text(
                'Objectives',
                style: TextStyle(fontSize: 18),
              ),
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
              iconColor: Colors.blueAccent,
              title: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
              textColor: Colors.blueAccent,
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
