import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_project/main.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/logo.png'),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Center(
                  child: Text(
                    'Sign Up Page',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 44.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 24.0),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Email',
                    prefixIcon: Icon(Icons.mail, color: Colors.white),
                    //icon: Icon(Icons.mail),
                  ),
                ),
                const SizedBox(height: 24.0),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter Your Password',
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 28.0),
                Container(
                  margin: const EdgeInsets.fromLTRB(80.0, 0, 0, 0),
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text)
                          .then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      });
                    },
                    child: const Text(
                      'Create Account',
                      style: TextStyle(color: Colors.red, fontSize: 18.0),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
