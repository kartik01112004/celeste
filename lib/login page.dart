import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:spacegame1/page2.dart';
import 'auth_service.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const FaIcon(FontAwesomeIcons.hammer),
      color: Colors.grey[700],
      onPressed: () {},
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailAddress = TextEditingController();
  final _password = TextEditingController();
  final _fullName = TextEditingController();

  String email = '';
  String password = '';
  String fullName = '';
  bool login = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("LOGIN PAGE"),
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
                const MyWidget(),
                ListTile(
                  title: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter email address",
                      icon: const Icon(Icons.mail_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        email = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter user password",
                      icon: const Icon(FontAwesomeIcons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                    onSaved: (value) {
                      setState(() {
                        password = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _fullName,
                    decoration: InputDecoration(
                      hintText: "Enter user Name",
                      icon: const Icon(FontAwesomeIcons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter user name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fullName = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Container(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          login
                              ? AuthServices.signinUser(
                                  email, password, context)
                              : AuthServices.signupUser(
                                  email, password, fullName, context);

                          Get.to(() => Player());
                        }
                      },
                      child: Text(login ? 'Login' : 'Signup'),
                    ),
                  ),
                ),
                ListTile(
                  title: TextButton(
                    onPressed: () {
                      setState(() {
                        login = !login;
                      });
                    },
                    child: Text(login
                        ? "Don't have an account? Signup"
                        : "Already have an account? Login"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
