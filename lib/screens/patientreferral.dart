import 'package:flutter/material.dart';

class PatientReferral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Patient Referral';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: PatientReferralForm(),
      ),
    );
  }
}

enum Sex { male, female }

class PatientReferralForm extends StatefulWidget {
  @override
  PatientReferralFormState createState() {
    return PatientReferralFormState();
  }
}

class PatientReferralFormState extends State<PatientReferralForm> {
  final _formKey = GlobalKey<FormState>();
  Sex _sex = Sex.male;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          ListTile(
            title: const Text('Male'),
            leading: Radio(
              value: Sex.male,
              groupValue: _sex,
              onChanged: (Sex value) {
                setState(() {
                  _sex = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Female'),
            leading: Radio(
              value: Sex.female,
              groupValue: _sex,
              onChanged: (Sex value) {
                setState(() {
                  _sex = value;
                });
              },
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your age',
              labelText: 'Age',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter Refer Date',
              labelText: 'Refer Date',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your township',
              labelText: 'Township',
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
              labelText: 'Refer From',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Refer To',
            ),
          ),
          Radio(
            value: Sex.female,
            groupValue: _sex,
            onChanged: (Sex value) {
              setState(() {
                _sex = value;
              });
            },
          ),
          Radio(
            value: Sex.female,
            groupValue: _sex,
            onChanged: (Sex value) {
              setState(() {
                _sex = value;
              });
            },
          ),
          Radio(
            value: Sex.female,
            groupValue: _sex,
            onChanged: (Sex value) {
              setState(() {
                _sex = value;
              });
            },
          ),
          // ignore: unnecessary_new
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: RaisedButton(
                child: const Text('Submit'),
                onPressed: null,
              )),
        ],
      ),
    );
  }
}


