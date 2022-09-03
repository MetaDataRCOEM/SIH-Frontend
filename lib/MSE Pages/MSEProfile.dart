import 'package:Mnrega/Login.dart';
import 'package:flutter/material.dart';
import 'package:Mnrega/MSE%20Pages/MSEPersonal.dart';
import 'MSEWorkData.dart';

class MSEProfilePage extends StatelessWidget {
  final String username, ID;

  const MSEProfilePage({Key? key, required this.username, required this.ID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text("MGNERGA"),
        backgroundColor: Color.fromARGB(255, 39, 63, 104),
      ),
      body: isMobile
          ? SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 21, 37, 63),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: CircleAvatar(
                                radius: 75.0,
                                backgroundColor: Color(0xffffffff),
                                foregroundImage: AssetImage(
                                  "assets/emp.jpg",
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          username.toString(),
                          style: const TextStyle(
                            color: Color(0xFF212121),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "MSE ID : ",
                              style: TextStyle(
                                color: Color(0xFF212121),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                fontSize: 14.0,
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: const Color(0xFFCECECE),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    ID,
                                    style: const TextStyle(
                                      color: Color(0xFF212121),
                                      fontFamily: "JetBrains",
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 6.0,
                                  // ),
                                  // Icon(
                                  //   Icons.copy,
                                  //   color: Color(0xFF212121),
                                  //   size: 14.0,
                                  // )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MSEPersonal(
                                  username: username,
                                  ID: ID,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.account_box_outlined,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Profile",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF212121),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const WorkData(),
                            ));
                          },
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.book_outlined,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Work",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF212121),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.fact_check_outlined,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Attendance",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF212121),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        // FlatButton(
                        //   onPressed: () {},
                        //   child: Container(
                        //     height: 50.0,
                        //     decoration: BoxDecoration(
                        //       color: const Color(0xFFCECECE),
                        //       borderRadius: BorderRadius.circular(30.0),
                        //     ),
                        //     child: Padding(
                        //       padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        //       child: Row(
                        //         children: const <Widget>[
                        //           Icon(
                        //             Icons.settings_applications_outlined,
                        //             color: Color(0xFF212121),
                        //           ),
                        //           SizedBox(
                        //             width: 20.0,
                        //           ),
                        //           Text(
                        //             "Settings",
                        //             style: TextStyle(
                        //               fontSize: 16.0,
                        //               fontFamily: 'Poppins',
                        //               color: Color(0xFF212121),
                        //             ),
                        //           ),
                        //           Spacer(),
                        //           Icon(
                        //             Icons.chevron_right,
                        //             color: Color(0xFF212121),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 10.0,
                        // ),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.help_outline_sharp,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Help & Support",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF212121),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                          },
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.exit_to_app_rounded,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Logout",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          : SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 75.0,
                              backgroundColor: Color(0xffffffff),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          "Hemraj Yadav",
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              "MSE ID : ",
                              style: TextStyle(
                                color: Color(0xFF212121),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins",
                                fontSize: 14.0,
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: const Color(0xFFCECECE),
                              ),
                              child: Row(
                                children: const <Widget>[
                                  Text(
                                    "0293ur9028rcn",
                                    style: TextStyle(
                                      color: Color(0xFF212121),
                                      fontFamily: "JetBrains",
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 6.0,
                                  // ),
                                  // Icon(
                                  //   Icons.copy,
                                  //   color: Color(0xFF212121),
                                  //   size: 14.0,
                                  // )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MSEPersonal(
                                username: username,
                                ID: ID,
                              ),
                            ));
                          },
                          child: Container(
                            width: 400,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.account_box_outlined,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Profile",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF212121),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const WorkData(),
                            ));
                          },
                          child: Container(
                            width: 400,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.book_outlined,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Work History",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF212121),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            width: 400,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.fact_check_outlined,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Attendance",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF212121),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        // FlatButton(
                        //   onPressed: () {},
                        //   child: Container(
                        //     height: 50.0,
                        //     decoration: BoxDecoration(
                        //       color: const Color(0xFFCECECE),
                        //       borderRadius: BorderRadius.circular(30.0),
                        //     ),
                        //     child: Padding(
                        //       padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        //       child: Row(
                        //         children: const <Widget>[
                        //           Icon(
                        //             Icons.settings_applications_outlined,
                        //             color: Color(0xFF212121),
                        //           ),
                        //           SizedBox(
                        //             width: 20.0,
                        //           ),
                        //           Text(
                        //             "Settings",
                        //             style: TextStyle(
                        //               fontSize: 16.0,
                        //               fontFamily: 'Poppins',
                        //               color: Color(0xFF212121),
                        //             ),
                        //           ),
                        //           Spacer(),
                        //           Icon(
                        //             Icons.chevron_right,
                        //             color: Color(0xFF212121),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 10.0,
                        // ),
                        FlatButton(
                          onPressed: () {},
                          child: Container(
                            width: 400,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.help_outline_sharp,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Help & Support",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF212121),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                          },
                          child: Container(
                            width: 400,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCECECE),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.exit_to_app_rounded,
                                    color: Color(0xFF212121),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    "Logout",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
