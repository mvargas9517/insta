import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'feed_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginPage()),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Container(
      height: _height,
      width: _width,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Instagram',
          style: GoogleFonts.lobsterTwo(
            fontSize: 35,
            color: Colors.white),
          ),
          SizedBox(height: _height * 0.03,),
          Container(
            height: _height * 0.055,
            width: _width * 0.9,
            decoration: BoxDecoration(
             color: Colors.black,
             border: Border.all(
               width: 0.7,
               color: Colors.white.withOpacity(0.2)),
               borderRadius: BorderRadius.circular(5)
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10, bottom: 9),
                hintText: 'Phone number, username or email', hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: _height * 0.055,
            width: _width * 0.9,
            decoration: BoxDecoration(
             color: Colors.black,
             border: Border.all(
               width: 0.7,
               color: Colors.white.withOpacity(0.2)),
               borderRadius: BorderRadius.circular(5.0)
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10.0, bottom: 9.0),
                hintText: 'Password', hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Forgot password?',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.2
                ),),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0,),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FeedPage()));
              },
              color: Colors.blue[800].withOpacity(0.9),
              child: Center(
                child: Text('Log In',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7)
                ),),
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Entypo.facebook, 
              color: Colors.blue[700],
              size: 18,
              ),
              SizedBox(width: 5.0),
              Text('Continue using Facebook',
              style: TextStyle(
                color: Colors.blue[700],
                fontWeight: FontWeight.w600,
                letterSpacing: 0.4
              ),)
            ],
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 1,
                width: _width * 0.3,
                color: Colors.grey.withOpacity(0.2)
              ),
              Text('OR',
              style: TextStyle(
                color: Colors.grey
              ),),
              Container(
                height: 1,
                width: _width * 0.3,
                color: Colors.grey.withOpacity(0.2)
              ),
            ],
          ),
          SizedBox(height: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Dont\' have an account?',
              style: TextStyle(
                color: Colors.grey
              ),),
              SizedBox(width: 5.0),
              Text('Sign up.',
              style: TextStyle(
                color: Colors.blue[700]
              ),),
            ],
          ),
        ],
      ),
    );
  }
}