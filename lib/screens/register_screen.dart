import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Icon(CupertinoIcons.line_horizontal_3_decrease),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.diamond_outlined),
            const SizedBox(width: 5),
            Text(
              'Shrine'.toUpperCase(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 50,
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 220, top: 100),
            child: Text(
              'Sign in',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 340,
              height: 290,
              decoration: const BoxDecoration(
                color: Color(0xfffdeaf4),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(13),
                        labelText: 'Username',
                        fillColor: Color(0xffffe5ef),
                        filled: true,
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.0, color: Colors.grey)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(13),
                        labelText: 'Password',
                        fillColor: Color(0xffffe5ef),
                        filled: true,
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.0, color: Colors.grey)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text("Forgot password?")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return const SizedBox(
                              height: 350,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Icon(
                                      Icons.key_outlined,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Google password manager",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      "Use your saved passkey for\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  Shrine?",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 40),
                      backgroundColor: const Color(0xfffdbbef),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
