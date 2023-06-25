import 'package:backet/Welcome/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({super.key});

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 180,
                  height: 230,
                  decoration: BoxDecoration(
                    color: HexColor("#5F49CC"),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 90,
                    left: 30,
                    right: 50,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (c) => const LoginScreen()));
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 35,
                      color: HexColor("#FFFFFF"),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(0, 0),
                padding: const EdgeInsets.all(16),
                child: Text(
                  "Login as a page owner",
                  style: TextStyle(
                    color: HexColor("#241C4D"),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0),
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/OTP.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: const Alignment(0, 0),
            width: 150,
            height: 100,
            child: Text(
              "jvljadjerjgieojrviejriovjoevfioei",
              style: TextStyle(
                color: HexColor("#241C4D"),
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: const Alignment(0, 0),
            padding: const EdgeInsets.all(16),
            child: Text(
              "Phone Number",
              style: TextStyle(
                color: HexColor("#241C4D"),
                fontSize: 20,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Edit",
                  style: TextStyle(
                    color: HexColor("#241C4D"),
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 100,
                padding: const EdgeInsets.all(32),
                child: TextField(
                  enabled: false,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.phone,
                      color: HexColor("#473799"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
