import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hi Have a nice day"),
      ),
      floatingActionButton: FlatButton(
        child: Text("Logout"),
          color: Colors.greenAccent,
          onPressed: ()async{
        await _auth.signOut();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
      }

      ),
    );
  }

}
