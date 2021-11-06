import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(children: [
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hello",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              Text("Mohit@gmail.com",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
              SizedBox(height: 50),
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
            ],
          ))
    ]));
  }
}
