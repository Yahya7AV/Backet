import 'package:backet/Welcome/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  HexColor("#372D75"),
                  HexColor("#5443B4"),
                  HexColor("#765EFF").withOpacity(0.5),
                ],
              ),
              image: DecorationImage(
                image: const AssetImage("images/background.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.purple.withOpacity(0.1),
                  BlendMode.dstATop,
                ),
              ),
            ),
            child: const Center(
              child: Text("Hello"),
            ),
          ),
          SizedBox(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_outlined,
                        color: HexColor("#5F49CC"),
                      ),
                      Text(
                        "Looking for a product?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: HexColor("#5F49CC"),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (c) => const LoginScreen()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_outlined,
                        color: HexColor("#5F49CC"),
                      ),
                      Text(
                        "Log In as a Product Owner?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: HexColor("#5F49CC"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -20,
            left: -80,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          Positioned(
            top: -7,
            left: -100,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
