//form_validation_app.dart

import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form validation and State',
      //home: FormValidationAndStateApp(),
      //home: TextFieldExample(),
      //home: DropDownExample(),
      //home: TextFieldApp(),
      home: FormValidationApp(),
    );
  }
}

class FormValidationApp extends StatefulWidget {

  @override
  _FormValidationAppState createState() => _FormValidationAppState();
}

class _FormValidationAppState extends State<FormValidationApp> {
  var _formKey = GlobalKey<FormState>();

  String yourName = '';
  String yourAge = '';
  var _cities = ["Tangerang", "Jakarta Barat", "Jakarta Timur", "Bekasi", "Bogor"];
  String _youHaveSelected = '';
  String _displayText = '';

  @override
  void initState() {
    super.initState();
    _youHaveSelected = _cities[0];
  }

  TextEditingController textOfAge = TextEditingController();
  TextEditingController textOfName = TextEditingController();

  void selectedDropDownItem(String theValueSelected) {
    setState(() {
      this._youHaveSelected = theValueSelected;
    });
  }

  String displayAllSelectedValue() {
    String name = textOfName.text;
    int age = int.parse(textOfAge.text);
    String city = _youHaveSelected;
    String displayAllSelectedValues = 'Your name is ${name}, your age is ${age} and you live in ${city}';
    return displayAllSelectedValues;
  }

  void _resetButton() {
    textOfName.text = '';
    textOfAge.text = '';
    _youHaveSelected = _cities[0];
    _displayText = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Type your name, age, and select the city from the drop down menu below.',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: textOfName,
                validator: (String? validationValue) {
                  if (validationValue == null || validationValue.isEmpty) {
                    return 'Please fill up the form with correct input';
                  }
                  return null;
                },
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  hintText: 'In Text...',
                  labelStyle: const TextStyle(
                    fontSize: 17.0,
                    color: Colors.red,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  errorStyle: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: textOfAge,
                validator: (String? validationValue) {
                  if (validationValue == null || validationValue.isEmpty) {
                    return 'Please fill up the form with correct input';
                  }
                  return null;
                },
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  labelText: 'Your Age',
                  hintText: 'In number...',
                  labelStyle: const TextStyle(
                    fontSize: 17.0,
                    color: Colors.red,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  errorStyle: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(height: 10.0,),
              Padding(padding: const EdgeInsets.only(left: 32.0, top: 10.0),
                child: DropdownButton<String>(
                  items: _cities.map((String nameOfCities) {
                    return DropdownMenuItem<String>(
                      value: nameOfCities,
                      child: Text(nameOfCities),
                    );
                  }).toList(),
                  onChanged: (String? theValueSelected) {
                    if (theValueSelected != null) {
                      selectedDropDownItem(theValueSelected);
                    }
                  },
                  value: _youHaveSelected,
                  iconSize: 50.0,
                ),
              ),
              const SizedBox(height: 100.0,),
              Row(
                children: <Widget>[
                  Container(
                    width: 150.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.yellow,
                      ),
                      child: const Text('Press', style: TextStyle(fontSize: 25.0)
                      ),
                      onPressed: () {
                        setState(() {
                          if (_formKey.currentState?.validate()??false) {
                            this._displayText = displayAllSelectedValue();
                          }
                        });
                      },
                    ),
                  ),
                  Container(width: 25.0,),
                  Container(
                    width: 150.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.yellow,
                      ),
                      child: Text("reset", style: TextStyle(fontSize: 25.0),),
                      onPressed: () {
                        setState(() {
                          _resetButton();
                        });
                      },
                    ),
                  ),
                ],
              ),
              Padding(padding: const EdgeInsets.all(8.0),
                child: Text('${_displayText}',
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}