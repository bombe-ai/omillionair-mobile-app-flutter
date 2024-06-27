// import 'package:flutter/material.dart';
// import 'package:omillionare/widgets/common/country_dropdown.dart';
// import 'package:go_router/go_router.dart';
// import 'package:omillionare/Widgets/common/country_dropdown.dart';

// // TODO CHANGE TO STATELESS WIDGET and use BlocProvider
// // TODO CHANGE TO STATELESS WIDGET and use BlocProvider
// // TODO CHANGE TO STATELESS WIDGET and use BlocProvider
// class FirstSignupFields extends StatefulWidget {
//   VoidCallback goToSecondFields;
//   FirstSignupFields({super.key, required this.goToSecondFields});

//   @override
//   State<FirstSignupFields> createState() => _FirstSignupFieldsState();
// }

// class _FirstSignupFieldsState extends State<FirstSignupFields> {
//   bool? policyAgreementChecked = false;
//   bool? recievePromotionalsChecked = true;

//   @override
//   Widget build(BuildContext context) {

//     return Container(
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(40),
//             topRight: Radius.circular(40)),
//         color: Colors.white,
//       ),
//       width: double.infinity,
//       child: Padding(
//         padding: EdgeInsets.only(left: 18.0, right: 18),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 25),
//             Text("REGISTER",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w900,
//                   color: Colors.black,
//                 )),
//             SizedBox(height: 7),
//             Text("Sign up by filling the below fields" , style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.normal,
//               color: Colors.black,
//             )),
//             SizedBox(height: 30),
//             Text("Full Name*"),
//             SizedBox(height: 10,),
//             SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: TextFormField(
//                 obscureText: false,
//                 decoration: InputDecoration(
//                     hintText: 'john doe',
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.black, width: 2),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.red, width: 2),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Text("Mobile Number*"),
//             SizedBox(height: 10,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 CountryDropdown(),
//                 SizedBox(width: 10),
//                 SizedBox(
//                   width: 225,
//                   height: 50,
//                   child: TextFormField(
//                     keyboardType: TextInputType.number,
//                     decoration: InputDecoration(
//                         hintText: '451236877',
//                         enabledBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.grey),
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.black, width: 2),
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                         errorBorder: OutlineInputBorder(
//                           borderSide: const BorderSide(color: Colors.red, width: 2),
//                           borderRadius: BorderRadius.circular(50),
//                         ),
//                       ),
//                   ),
//                 ),
//               ],
//             ),

//             SizedBox(height: 20,),

//             Text("Password*"),
//             SizedBox(height: 10,),
//             SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     hintText: '451236877',
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.black, width: 2),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.red, width: 2),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//               ),
//             ),

//             SizedBox(height: 20,),

//             Text("Confirm Password*"),
//             SizedBox(height: 10,),
//             SizedBox(
//               width: double.infinity,
//               height: 50,
//               child: TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     hintText: '451236877',
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.grey),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.black, width: 2),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     errorBorder: OutlineInputBorder(
//                       borderSide: const BorderSide(color: Colors.red, width: 2),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                   ),
//               ),
//             ),

//             SizedBox(height: 30,),
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Checkbox(
//                       isError: false,
//                       value: policyAgreementChecked,

//                       activeColor: Color.fromRGBO(1, 126, 51, 1),
//                       onChanged: (bool? value) {
//                         setState(() {
//                           policyAgreementChecked = value;
//                         });
//                       },
//                     ),
//                     // SizedBox(width: 10,),
//                     Container(
//                       width:  MediaQuery.of(context).size.width - 80,
//                       child: Wrap(
//                         alignment: WrapAlignment.start,
//                         crossAxisAlignment: WrapCrossAlignment.start,
//                         children: [
//                           Text("I confirm that I have read and accepted the " , style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal,
//                             color: Colors.black,
//                           )),
//                           InkWell(
//                             onTap: () { },
//                             child: Text("Terms & Conditions " , style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.normal,
//                               color: Colors.blue,
//                             )),
//                           ),
//                           Text("and " , style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal,
//                             color: Colors.black,
//                           )),
//                           InkWell(
//                             onTap: () { },
//                             child: Text("Privacy Policy." , style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.normal,
//                               color: Colors.blue,
//                             )),
//                           ),
//                           Text("*" , style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal,
//                             color: Color.fromARGB(255, 175, 0, 0),
//                           )),
//                         ],
//                       )
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Checkbox(
//                       isError: false,
//                       value: recievePromotionalsChecked,

//                       activeColor: Color.fromRGBO(1, 126, 51, 1),
//                       onChanged: (bool? value) {
//                         setState(() {
//                           recievePromotionalsChecked = value;
//                         });
//                       },
//                     ),
//                     // SizedBox(width: 10,),
//                     Container(
//                       width: MediaQuery.of(context).size.width - 80,
//                       child: Wrap(
//                         alignment: WrapAlignment.start,
//                         crossAxisAlignment: WrapCrossAlignment.start,
//                         children: [
//                           Text("I would like to receive offers, newsletters, promotions and other marketing communications." , style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal,
//                             color: Colors.black,
//                           )),
//                         ],
//                       )
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 40,),
//                 Column(
//                   children: [
//                     Material(
//                       elevation: 3.0,
//                       borderRadius: BorderRadius.circular(30),
//                       child: InkWell(
//                         onTap: widget.goToSecondFields,
//                         // splashColor: Color.fromRGBO(1, 126, 51, 0.425),
//                         child: Container(
//                           height: 55,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(30),
//                             gradient: const LinearGradient(colors: [
//                               Color.fromRGBO(1, 181, 16, 1),
//                               Color.fromRGBO(1, 126, 51, 1),
//                             ]),
//                           ),
//                           child: Center(
//                             child: Text(
//                               'CREATE ACCOUNT',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 color: Colors.white,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: 30,),

//                     Material(
//                       elevation: 1.0,
//                       borderRadius: BorderRadius.circular(30),
//                       child: InkWell(
//                         onTap: () { context.pop(); },
//                         // splashColor: Color.fromRGBO(1, 126, 51, 0.425),
//                         child: Container(
//                           height: 55,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(30),
//                             border: Border.all(color: Color.fromRGBO(1, 126, 51, 1), width: 1.5),
//                             // gradient: const LinearGradient(colors: [
//                             //   Color.fromRGBO(1, 181, 17, 100),
//                             //   Color.fromRGBO(1, 126, 50, 100),
//                             // ]),
//                             gradient: const LinearGradient(colors: [
//                               Color.fromRGBO(255, 255, 255, 1),
//                               Color.fromRGBO(255, 255, 255, 1),
//                             ]),
//                           ),
//                           child: Center(
//                             child: Text(
//                               'BACK',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 color: Color.fromRGBO(1, 126, 51, 1),
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ]
//                 ),
//                 SizedBox(height: 40,),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }