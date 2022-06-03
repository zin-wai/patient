import 'package:flutter/material.dart';

// import '../screens/login.dart';
import '../screens/patientreferral.dart';
import '../screens/heactivity.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter FlatButton Example'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text(
                  'Patient Referral',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  _navigateToPatientReferral(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text(
                  'HE Activity',
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  _navigateToHEActivity(context);
                },
              ),
            ),
          ]))),
    );
  }
}

void _navigateToPatientReferral(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PatientReferral()));
}

void _navigateToHEActivity(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => HEActivity()));
}
