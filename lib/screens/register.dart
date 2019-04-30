import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Explicit
  //ประกาศตัวเเปร
  final formInput = GlobalKey<FormState>();

  Widget name() {
    return TextFormField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.0,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          labelText: 'Name :',
          hintText: ' ',
          icon: Icon(
            Icons.face,
            color: Colors.white,
          )),
      validator: (String value) {
        if (value.length == 0) {
          return 'กรอกข้อมูลด้วย ไอสัส!';
        } else {}
      },
    );
  }

  Widget emailInput() {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        labelText: 'Email :',
        hintText: 'you@email.com',
        icon: Icon(
          Icons.email,
          color: Colors.white,
        ),
      ),
       validator: (String value) {
        if (value.length == 0) {
          return 'กรอกข้อมูลด้วย ไอสัส!';
        } else if (!((value.contains('@')) && (value.contains('.')))) {
          return 'กรอกให้ภูกต้องตาม format สิไอสัส';
        }
      },
    );
  }

  Widget passwordInput() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        labelText: 'Password :',
        hintText: 'More 6 Character',
        icon: Icon(
          Icons.vpn_key,
          color: Colors.white,
        ),
      ),
      validator: (String value) {
        if (value.length <= 5) {
          return 'กรอก6ตัวอักษรขึ้นไปสิ ไอโง่!';
        }
      },
    );
  }

  Widget upLoadButton() {
    return IconButton(
      onPressed: () {
        print('55555555555');
        if (formInput.currentState.validate()) {}
      },
      icon: Icon(Icons.cloud_upload),
      tooltip: 'Upload To Firebase',
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(
            'Register to be Slave',
            style: TextStyle(
                fontFamily: 'Coldnight',
                fontSize: 25.0,
                color: Colors.white),
          ),
          actions: <Widget>[
            Container(
              child: upLoadButton(),
            ),
          ],
          backgroundColor: Colors.red[900],
        ),
        body: Form(
          key: formInput,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
                colors: [Colors.red[900],Colors.black87, Colors.black],
              // colors: [Colors.white, Colors.indigoAccent[400]],
            )),
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

                // line3(),
              ],
            ),
          ),
        ));
  }
}
