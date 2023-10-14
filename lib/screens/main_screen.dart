import 'package:flutter/material.dart';
import 'package:register_app/screens/register_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcd7ed),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.diamond_outlined,
              size: 60,
            ),
            Text(
              "Shrine".toUpperCase(),
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterScreen()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 40),
                  backgroundColor: const Color(0xfffdbbef),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(4)
                  )
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 40),
                  backgroundColor: const Color(0xffffffff),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(4)
                  )
              ),
              child: const Text(
                'Sign up',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
