import 'package:flutter/material.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isRemember = false;

  Widget buildMainLogo() {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 100.0,
      child: Image.asset('assets/logo.png'),
    );
  }

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email'),
        SizedBox(height: 10.0),
        Container(
          height: 60.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: "Enter your E-mail",
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password'),
        SizedBox(height: 10.0),
        Container(
          height: 60.0,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: "Enter your Password",
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgotPass(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () {
          print("pushed button");
        },
        child: Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
            ),
          ),
        ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.blue[200],
        child: Text(
          'LOGIN',
          style: TextStyle( 
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans'
          ),
        ),
      ),
    );
  }

  Widget buildRemember() {
    return Row(
      children: [
        Checkbox(
          value: isRemember,
          onChanged: (value) {
            setState(() {
              isRemember = value;
            });
          },
        ),
        Text('Remember me'),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Column(children: [
          SizedBox(height: 100.0),
          buildMainLogo(),
          SizedBox(height: 80.0),
          buildEmail(),
          SizedBox(height: 30.0),
          buildPassword(),
          buildForgotPass(),
          buildRemember(),
          buildLoginBtn(),
        ],
     ),
      )
    );
  }
}