import 'package:flutter/material.dart';
import 'package:helloflutter/screens/register.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget appLogo() {
    return Image.asset('images/logo.png',
    color: Colors.red[900],);
  }

  Widget appName() {
    return Text(
      'CORE SOLUTIONS',
      style: TextStyle(
          fontFamily: 'Coldnight',
          fontSize: 40.0,
          fontWeight: FontWeight.w500,
          color: Colors.red[900]),
    );
  }

  Widget emailInput() {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Colors.red[900],
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        labelText: 'Email :',
        hintText: 'you@email.com',
        icon: Icon(
          Icons.email,
          color: Colors.red[900],
        ),
      ),
    );
  }


  Widget passwordInput() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Colors.red[900],
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        labelText: 'Password :',
        hintText: 'More 6 Character',
        icon: Icon(
          Icons.vpn_key,
          color: Colors.red[900],
        ),
      ),
    );
  }

  Widget signInButton() {
    return RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.red,
      child: Text(
        'Sign in',
        style: TextStyle(
            fontFamily: 'Coldnight',
            fontSize: 30.0,
            fontWeight: FontWeight.w400,
            color: Colors.white),
      ),
      
      
      );
  }

  Widget signUpButton(BuildContext context) {
    return RaisedButton(
      child: Text('Sign up',
      style: TextStyle(
          fontFamily: 'Coldnight',
          fontSize: 30.0,
          fontWeight: FontWeight.w400,
          color: Colors.white),),
      onPressed: () {
        print('rrrrrrrrrrrrrrrrrrrrr');
        var registerRoute =
            MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(registerRoute);
      },
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red[900],Colors.black87, Colors.black],
                begin: Alignment.topCenter)),
        padding: EdgeInsets.only(top: 50.0),
        alignment: Alignment(0, -1),
        child: Column(
          children: <Widget>[
            Container(
              width: 300.0,
              height: 200.0,
              child: appLogo(),
            ),
            Container(
              child: appName(),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0, right: 50.0, left: 50.0),
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
                        child: signUpButton(context),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
