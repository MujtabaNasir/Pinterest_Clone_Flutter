import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_project/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const MyApp(),
                ),
              );
            },
            child: const Icon(Icons.login_outlined, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 55.0,
                height: 55.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {},
                  child: const Text(
                    'For You',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 10.0),
            Row(
              children: [
                SizedBox(
                  width: 190.0,
                height: 190.0,
                child: Image.asset('images/pic1.png'),
                ),
                const SizedBox(width: 10.0),
                SizedBox(
                  width: 190.0,
                  height: 210.0,
                  child: Image.asset('images/pic2.png'),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(
                  width: 190.0,
                  height: 210.0,
                  child: Image.asset('images/pic3.png'),
                ),
                const SizedBox(width: 10.0),
                SizedBox(
                  width: 190.0,
                  height: 210.0,
                  child: Image.asset('images/pic4.png'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(
                  width: 190.0,
                  height: 210.0,
                  child: Image.asset('images/pic5.png'),
                ),
                const SizedBox(width: 10.0),
                SizedBox(
                  width: 190.0,
                  height: 210.0,
                  child: Image.asset('images/pic6.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
