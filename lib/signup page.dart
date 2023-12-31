import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailaddress = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
  final TextEditingController password = TextEditingController();
 final TextStyle whiteTextStyle = const TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('SIGN UP PAGE'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/image5.gif',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Form(
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailaddress,
                  decoration: InputDecoration(
                    hintText: "Enter email address",
                    icon: const Icon(FontAwesomeIcons.envelope),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                     labelStyle: whiteTextStyle,
                      hintStyle: whiteTextStyle,
                  ),style: whiteTextStyle,
                  onFieldSubmitted: (value) {
                    // Validator
                  },
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  controller: phonenumber,
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    icon: const Icon(FontAwesomeIcons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                    labelStyle: whiteTextStyle,
                      hintStyle: whiteTextStyle,
                  ),style: whiteTextStyle,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: password,
                  decoration: InputDecoration(
                    hintText: "Enter user password",
                    icon: const Icon(FontAwesomeIcons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                    labelStyle: whiteTextStyle,
                      hintStyle: whiteTextStyle,
                  ),style: whiteTextStyle,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter user password';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Going to login page'),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Invalid'),
                        ),
                      );
                    }
                  },
                  child: const Text('Return to login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
