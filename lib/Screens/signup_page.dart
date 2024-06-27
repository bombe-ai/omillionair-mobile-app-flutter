import 'package:flutter/material.dart';
import 'package:omillionare/Widgets/layout/drawer_widget.dart';
import 'package:omillionare/Widgets/signup_page/signup_first_fields.dart';
import 'package:omillionare/Widgets/signup_page/signup_second_fields.dart';

// TODO CHANGE TO STATELESS WIDGET and use BlocProvider
// TODO CHANGE TO STATELESS WIDGET and use BlocProvider
// TODO CHANGE TO STATELESS WIDGET and use BlocProvider
class SignupPage extends StatefulWidget {
  const SignupPage({super.key});


@override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  int _fieldsWigetNum = 0;

  void goBackToFirstFields() {
    setState(() {
      _fieldsWigetNum = 0;
    });
  }
  void goToSecondFields() {
    setState(() {
      _fieldsWigetNum = 1;
    });
  }

  Widget getFieldsWidget() {
    if (_fieldsWigetNum == 0) {
      return FirstSignupFields(goToSecondFields: goToSecondFields);
    } else {
      return SecondSignupFields(goBackToFirstFields: goBackToFirstFields);
    }
  }

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
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/auth_bg.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 350.0),
              child: getFieldsWidget(),
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
