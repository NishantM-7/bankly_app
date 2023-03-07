// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: MediaQuery.of(context).size.height * 0.5,
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.11),
            child: Image(
              image: AssetImage('assets/images/Ellipse1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          StartScreenText(context),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.15,
            ),
            child: Image(
              image: AssetImage('assets/images/Ellipse2.jpg'),
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }

  Widget StartScreenText(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BanklyLogoBuilder(),

          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.035, left: 5),
            child: Text(
              'ankly.',
              style: TextStyle(
                color: Color(0xFF909EC0),
                fontSize: MediaQuery.of(context).size.height * 0.07,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // )
        ],
      ),
    );
  }
}

class BanklyLogoBuilder extends StatelessWidget {
  const BanklyLogoBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF7EE081),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.15,
            transform: Matrix4.translationValues(0, 30, 0),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF24D3B5).withOpacity(0.9),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.15,
          ),
        ],
      ),
    );
  }
}
