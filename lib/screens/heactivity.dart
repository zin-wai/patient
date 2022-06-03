import 'package:flutter/material.dart';

class HEActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'HE Activity';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: HEActivityForm(),
      ),
    );
  }
}

class HEActivityForm extends StatefulWidget {
  @override
  HEActivityFormState createState() {
    return HEActivityFormState();
  }
}

class HEActivityFormState extends State<HEActivityForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter Date',
              labelText: 'Date',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your address',
              labelText: 'Address',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Volunteer ',
            ),
          ),
          
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'HE Attendees List ',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Male',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Feale',
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: null,
              )),
        ],
      ),
    );
  }
}
