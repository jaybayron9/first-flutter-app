import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'login.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Member Register'),
      ),
      body: const RegisterForm(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);
  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController FirstNameController = TextEditingController();
  TextEditingController LastNameController = TextEditingController();
  TextEditingController GroupController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  TextEditingController EmailController = TextEditingController();

  // Future<void> sendData() async {
  //   final String apiUrl = "http://127.0.0.1:8000/api/register";

  //   final res = await http.post(Uri.parse(apiUrl), body: {
  //     'first_name': FirstNameController.text,
  //     'last_name': LastNameController.text,
  //     'group': GroupController.text,
  //     'phone': PhoneController.text,
  //     'email': EmailController.text
  //   });

  //   final Map<String, dynamic> responseData = json.decode(res.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'First Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            controller: FirstNameController,
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Last Name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            controller: GroupController,
            decoration: const InputDecoration(
              icon: Icon(Icons.group),
              labelText: 'Group',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            controller: PhoneController,
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              labelText: 'Phone Number',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            controller: EmailController,
            decoration: const InputDecoration(
              icon: Icon(Icons.email),
              labelText: 'Email',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );

                // if (_formKey.currentState!.validate()) {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(content: Text('Processing Data')),
                //   );
                // }
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(5),
              ),
              child: const Center(
                child: Text('SUBMIT'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                ); 
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(5),
              ),
              child: const Center(
                child: Text('Login'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
