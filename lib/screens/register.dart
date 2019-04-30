import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget name() {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: Colors.white,),
            borderRadius: BorderRadius.circular(15.0),
          ),
          labelText: 'Name :',
          hintText: ' ',
          icon: Icon(Icons.face, color: Colors.white,)),
    );
  }

  Widget emailInput() {
    return TextFormField(
      decoration: InputDecoration(
         enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: Colors.white,),
            borderRadius: BorderRadius.circular(15.0),
          ),
        labelText: 'Email :',
        hintText: 'you@email.com',
        icon: Icon(Icons.email, color: Colors.white,),
      ),
    );
  }

  Widget passwordInput() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: Colors.white,),
            borderRadius: BorderRadius.circular(15.0),
          ),
        labelText: 'Password :',
        hintText: 'A-Z a-z',
        icon: Icon(Icons.vpn_key, color: Colors.white,),
      ),
    );
  }

  Widget signUpButton() {
    return RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.redAccent,
      child: Text('Sign up'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Pracharat Register'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.redAccent, Colors.blueAccent],
                begin: Alignment(1, 1))),
        padding: EdgeInsets.only(top: 50.0),
        alignment: Alignment(0, -1),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0, right: 50.0, left: 50.0),
              child: name(),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, right: 50.0, left: 50.0),
              child: emailInput(),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0, right: 50.0, left: 50.0),
              child: passwordInput(),
            ),
            Container(
                margin: EdgeInsets.only(top: 10.0, right: 70.0, left: 70.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(top: 15.0, right: 50.0, left: 50.0),
                        child: signUpButton(),
                      ),
                    ),
                  ],
                )),
            // line3(),
          ],
        ),
      ),
    );
  }
}
