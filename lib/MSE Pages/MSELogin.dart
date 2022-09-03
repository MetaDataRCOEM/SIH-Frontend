import 'package:flutter/material.dart';
import 'package:Mnrega/MSE%20Pages/MSEProfile.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../services/authserve.dart';

class MSELogin extends StatefulWidget {
  const MSELogin({Key? key}) : super(key: key);

  @override
  State<MSELogin> createState() => _MSELoginState();
}

class _MSELoginState extends State<MSELogin> {
  var username, ID, pass, token;
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MSE Login Portal"),
        backgroundColor: Color.fromARGB(255, 25, 41, 69),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'Show Snack',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Officer login to your ID')));
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: isMobile
          ? SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          'assets/mnrega.png',
                          height: 150.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        "MNREGA Login Portal",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Login with your credentials",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                            onChanged: (value) {
                              username = value;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter Username',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                            onChanged: (value) {
                              ID = value;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.security,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter MSE ID',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                            onChanged: (value) {
                              pass = value;
                            },
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.password,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter Password',
                            ),
                            obscureText: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 43, 70, 101),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: FlatButton(
                            onPressed: () => {
                              AuthService().auth(username, ID, pass).then(
                                (value) {
                                  if (value.data["success"]) {
                                    token = value.data['token'];
                                    print(token);
                                  }
                                },
                              ),
                              AuthService().getInfo(token).then(
                                (value) {
                                  username = value.data["msg"]["username"];
                                  ID = value.data["msg"]["mseID"];
                                },
                              ),
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => MSEProfilePage(
                                      username: username, ID: ID),
                                ),
                              ),
                            },
                            child: const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          : SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 1100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          'assets/mnrega.png',
                          height: 150.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        "MNREGA Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Login with your credentials",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                        ),
                        child: Container(
                          width: 400,
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter Username',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                        ),
                        child: Container(
                          width: 400,
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.security,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter MSE ID',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25.0,
                        ),
                        child: Container(
                          width: 400,
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                            decoration: const InputDecoration(
                              icon: Icon(
                                Icons.password,
                                color: Colors.grey,
                              ),
                              border: InputBorder.none,
                              hintText: 'Enter Password',
                            ),
                            obscureText: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: FlatButton(
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MSELogin(),
                                ),
                              )
                            },
                            child: const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
