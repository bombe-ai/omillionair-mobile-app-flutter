import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondSignupFields extends StatefulWidget {
  final VoidCallback goBackToFirstFields;
  SecondSignupFields({super.key, required this.goBackToFirstFields});

  @override
  State<SecondSignupFields> createState() => _SecondSignupFieldsState();
}

class _SecondSignupFieldsState extends State<SecondSignupFields> {
  @override
  Widget build(BuildContext context) {


    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)),
        color: Colors.white,
      ),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(left: 18.0, right: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Text("REGISTER",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                )),
            SizedBox(height: 7),
            Text("Sign up by filling the below fields" , style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            )),

            SizedBox(height: 60,),

            Text("Enter OTP*"),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                    hintText: '0000',
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

            SizedBox(height: 50,),

            Column(
              children: [
                Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    onTap: () { context.go('/home'); },
                    // splashColor: Color.fromRGBO(1, 126, 51, 0.425),
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(1, 181, 16, 1),
                          Color.fromRGBO(1, 126, 51, 1),
                        ]),
                      ),
                      child: Center(
                        child: Text(
                          'VERIFY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30,),

                Material(
                  elevation: 1.0,
                  borderRadius: BorderRadius.circular(30),
                  child: InkWell(
                    onTap: widget.goBackToFirstFields,
                    // splashColor: Color.fromRGBO(1, 126, 51, 0.425),
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Color.fromRGBO(1, 126, 51, 1), width: 1.5),
                        // gradient: const LinearGradient(colors: [
                        //   Color.fromRGBO(1, 181, 17, 100),
                        //   Color.fromRGBO(1, 126, 50, 100),
                        // ]),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(255, 255, 255, 1),
                        ]),
                      ),
                      child: Center(
                        child: Text(
                          'BACK',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromRGBO(1, 126, 51, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}