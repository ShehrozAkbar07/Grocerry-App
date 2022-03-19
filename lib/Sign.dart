import 'package:flutter/material.dart';
import 'package:mart_app/dashboard.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.all(35)),
            const Text("Let's Sign you in",
                style: TextStyle(
                  color: Color(0xff00061a),
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                )),
            const SizedBox(height: 20),
            const Text("Welcome back",
                style: TextStyle(
                  color: Color(0xff00061a),
                  fontSize: 30,
                )),
            const Text("you've been missed!",
                style: TextStyle(
                  color: Color(0xff00061a),
                  fontSize: 30,
                )),
            const SizedBox(height: 90),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: form("Email Address", false),
            ),
            const SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: form("Password", true),
            ),
            const SizedBox(height: 140),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Register.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: SizedBox(
                width: 350,
                height: 65,
                child: ElevatedButton(
                  
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (const DashBoard())),
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff00061a),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget form(name, bool ans) {
  return TextField(
      style: TextStyle(color: Colors.white),
      obscureText: ans,
      decoration: InputDecoration(
        fillColor: Color(0xff00061a),
        filled: true,
        hintText: name,
        hintStyle: const TextStyle(color: Color.fromARGB(255, 114, 106, 106)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 2, color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2),
        ),
      ));
}
