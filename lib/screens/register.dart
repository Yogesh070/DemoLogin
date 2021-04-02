import 'package:flutter/material.dart';
import 'package:khajaghar/components/primary_button.dart';
import 'package:khajaghar/constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        // height: 500,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: ListView(
          // padding: EdgeInsets.symmetric(horizontal: 30.0),
          children: [
            Text(
              "Welcome!",
              style: kBoldTextStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Create a new account"),
            SizedBox(
              height: 20.0,
            ),
            InputFieldsWithIcon(
              labelText: 'Full Name',
              icon: Icons.person_outline,
            ),
            InputFieldsWithIcon(
              labelText: 'Email',
              icon: Icons.mail_outline,
            ),
            InputFieldsWithIcon(
              labelText: 'Phone Number',
              icon: Icons.phone_outlined,
            ),
            InputFieldsWithIcon(
              labelText: 'Password',
              icon: Icons.lock_outline,
              obsecureText: true,
            ),
            InputFieldsWithIcon(
              labelText: 'Confirm Password',
              icon: Icons.lock_outline,
              obsecureText: true,
            ),
            SizedBox(
              height: 20.0,
            ),
            PrimaryButton(title: 'Register'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already Registered?',
                  style: TextStyle(color: Color(0xff686868)),
                ),
                TextButton(
                  child: Text(
                    'Login now',
                    style: TextStyle(color: kPrimaryColor),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InputFieldsWithIcon extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final bool obsecureText;

  InputFieldsWithIcon({this.labelText, this.icon, this.obsecureText = false});
  @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 10.0),
//       child: TextField(
//         decoration: InputDecoration(
//           // contentPadding: EdgeInsets.symmetric(horizontal: 10),
//           labelText: labelText,
//           labelStyle: TextStyle(fontSize: 14.0),
//           filled: true,
//           fillColor: Colors.white,
//           border: InputBorder.none,
//           focusColor: Colors.black,
//           // labelStyle: TextStyle(color: Colors.black),
//           // hintText: labelText,
//           prefixIcon: Icon(icon),
//         ),
//       ),
//     );
//   }
// }
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF4F4F4),
      margin: EdgeInsets.only(top: 15.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(17),
            margin: EdgeInsets.only(right: 1.0),
            child: Icon(
              icon,
              color: kTextColor,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
          ),
          Expanded(
            child: TextField(
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                labelText: labelText,
                // hintText: labelText,
                labelStyle: TextStyle(fontSize: 14.0),
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                focusColor: Colors.black,
              ),
              obscureText: obsecureText,
            ),
          ),
        ],
      ),
    );
  }
}
