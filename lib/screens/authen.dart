import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget appLogo() {
    return Image.asset('images/logo.gif');
  }

  Widget appName() {
    return Text(
      'HELLO O-CHA',
      style: TextStyle(
          fontFamily: 'SpecialElite',
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.black87),
    );
  }

  Widget emailInput() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email :',
        hintText: 'you@email.com',
      ),
    );
  }

  Widget passwordInput() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password :',
        hintText: 'A-Z a-z',
      ),
    );
  }

  Widget signInButton() {
    return RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.red,
      child: Text('Sign in'),
    );
  }

  Widget signUpButton() {
    return RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.red,
      child: Text('Sign up'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.redAccent, Colors.blueAccent],
                begin: Alignment(-1, -1))),
        padding: EdgeInsets.only(top: 50.0),
        alignment: Alignment(0, -1),
        child: Column(
          children: <Widget>[
            Container(
              width: 300.0,
              height: 300.0,
              child: appLogo(),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: appName(),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0, right: 50.0, left: 50.0),
              child: emailInput(),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0, right: 50.0, left: 50.0),
              child: passwordInput(),
            ),
            Container(
                margin: EdgeInsets.only(top: 15.0, right: 50.0, left: 50.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 5.0),
                        child: signInButton(),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 5.0),
                        child: signUpButton(),
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(right: 5.0, left: 50.0),
                    //   child: signInButton(),
                    // ), Container(
                    //   margin: EdgeInsets.only(right: 50.0, left: 5.0),
                    //   child: signUpButton(),
                    // ),
                  ],
                )),
            // line3(),
          ],
        ),
      ),
    );
  }
}
