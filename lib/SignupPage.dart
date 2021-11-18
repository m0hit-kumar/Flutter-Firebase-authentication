import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    List social = ["google.png", "twitter.png", "facebook.png"];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: h / 8),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("img/avatar.png"),
                )
              ],
            ),
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
              SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.3)),
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email ",
                    prefixIcon: Icon(Icons.email, color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
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
                    hintText: "Password ",
                    prefixIcon: Icon(Icons.lock, color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Colors.white, width: 1.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
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
              text: "Sign in using following method",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          Wrap(
            children: List<Widget>.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF66BB6A),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black38,
                          blurRadius: 2,
                        ),
                      ]),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("img/" + social[index]),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    ));
  }
}
