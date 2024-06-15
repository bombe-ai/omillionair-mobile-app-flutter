import 'package:flutter/material.dart';
import 'package:omillionare/Widgets/common/country_dropdown.dart';
import 'package:omillionare/Widgets/layout/drawer_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text('Login Page'),
      //   automaticallyImplyLeading: false,
      // ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/auth_bg.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text("LOGIN" , style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    )),
                    SizedBox(height: 7),
                    Text("Use mobile number to login" , style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    )),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mobile Number*"),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CountryDropdown(),
                            SizedBox(width: 10),
                            SizedBox(
                              width: 225,
                              height: 50,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintText: '451236877',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.black, width: 2),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.red, width: 2),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                              ),
                            ),

                          ],
                        )

                      ]
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Password*"),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: '451236877',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black, width: 2),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.red, width: 2),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                          ),
                        ),
                      ]
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            height: 1,
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(1, 181, 17, 100),
                          Color.fromRGBO(1, 126, 50, 100),
                        ]),
                      ),
                      child: Center(
                        child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Colors.transparent, // Set the background color to transparent
                          ),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                        ),
                        child: Container(
                        child: Text(
                          'SIGN IN',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      ),
                      // child: const Center(
                      //   child: Text(
                      //     'SIGN IN',
                      //     style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 20,
                      //         color: Colors.white),
                      //   ),
                      // ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "You don't have an account?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: Text(
                                ' Click here register',
                                style: TextStyle(
                                  height: 1,
                                  color: Colors.blue,
                                  fontSize: 15,
                                ),
                              ),
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: const Drawer(
        child: DrawerWidget(),
      ),
    );
  }
}
