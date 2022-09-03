import 'package:flutter/material.dart';
// import 'package:final_nav_bar/MSEPersonal.dart';
import 'package:Mnrega/MSE%20Pages/MSEWorkData.dart';

class EmpWorkHistory extends StatefulWidget {
  const EmpWorkHistory({Key? key}) : super(key: key);

  @override
  State<EmpWorkHistory> createState() => _EmpWorkHistory();
}

class _EmpWorkHistory extends State<EmpWorkHistory> {
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text("Work History"),
        backgroundColor: Colors.blueAccent,
      ),
      // AppBar(
      //   leading: const Icon(
      //     Icons.arrow_back,
      //     color: Colors.black,
      //   ),
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: const Color(0xFFFFFFFF),
      //   title: const Text(""),
      // ),
      body: isMobile
          ? SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 30.0,
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Expanded(
                                    child: Text(
                                      "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF212121),
                                      ),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 30.0,
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const WorkData(),
                            ));
                          },
                          child: Container(
                            width: 600,
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                            width: 600,
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                            width: 600,
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                            width: 600,
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                            width: 600,
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
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
                            width: 600,
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
                                  // Icon(
                                  //   Icons.account_box_outlined,
                                  //   color: Color(0xFF212121),
                                  // ),
                                  // SizedBox(
                                  //   width: 20.0,
                                  // ),
                                  Text(
                                    "1824004/DP/1235061528(NUR ROPVATIKA DIVANKHED 20x30 C.M AKARACHE 4000 UNCH ROPE NIRMITI KARANE 2021 - 23)",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF212121),
                                    ),
                                  ),
                                  // Spacer(),
                                  // Icon(
                                  //   Icons.chevron_right,
                                  //   color: Color(0xFF212121),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
