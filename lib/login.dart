import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        brightness: Brightness.light,
        elevation: 0,
      ),
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  color: Color.fromARGB(255, 235, 228, 228),
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.topLeft,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            const Input(label: "Email or Phone number"),
                            const SizedBox(height: 10),
                            const Input(label: "Password"),
                            const SizedBox(height: 20),
                            const Text("forget Password ?"),
                            const SizedBox(height: 20),
                            myButton(
                              label: "Login",
                              width: 300,
                              color: Colors.red,
                              function: () => {print("login")},
                            ),
                            const SizedBox(height: 30),
                            const Text(
                              "Continue with social media ",
                            ),
                            const SizedBox(height: 30),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                myButton(
                                  label: "Facebook",
                                  color: Colors.blue,
                                  width: 150,
                                  function: () => {
                                    print("Facebook"),
                                  },
                                ),
                                const SizedBox(width: 30),
                                myButton(
                                  label: "Login",
                                  color: Colors.black,
                                  width: 150,
                                  function: () => {
                                    print("Github"),
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        )),
      ),
    );
  }
}

class myButton extends StatelessWidget {
  const myButton({
    Key? key,
    required this.width,
    required this.label,
    required this.function,
    required this.color,
  }) : super(key: key);
  final double width;
  final String label;
  final Function function;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(221, 244, 239, 239),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: InputBorder.none,
            hintText: label.toString(),
          ),
        ),
      ),
    );
  }
}
