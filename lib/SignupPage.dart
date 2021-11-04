import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: w,
          height: h * 0.3,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("img/banner4.png"))),
        ),
        Container(
          width: w,
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Hello",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
            Text("Sign into your account",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)),
                  ]),
              child: TextField(
                  decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1.0)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1.0)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              )),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)),
                  ]),
              child: TextField(
                  decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1.0)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white, width: 1.0)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              )),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Container()),
                Text("Forget your password?",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
              ],
            ),
            SizedBox(height: 20),
          ]),
        ),
        SizedBox(height: h * 0.08),
        Container(
          width: w * 0.5,
          height: h * 0.06,
          child: Center(
            child: Text("Sign in",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30)),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("img/banner4.png"),
            ),
          ),
        ),
        SizedBox(height: h * 0.08),
        RichText(
          text: TextSpan(
              text: "Don't have a account?",
              style: TextStyle(color: Colors.grey, fontSize: 15),
              children: [
                TextSpan(
                  text: "Create",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        )
      ],
    ));
  }
}
