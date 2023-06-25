import 'package:backet/Verification/verify_phone_screen.dart';
import 'package:backet/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phone = TextEditingController();

  @override
  void initState() {
    _phone = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 180,
              height: 200,
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
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => const WelcomeScreen()));
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  size: 35,
                  color: HexColor("#FFFFFF"),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 250,
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/login.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    width: 150,
                    height: 150,
                    child: const Text(
                        "kjhsbvfkjv;kwjbvk;jqebrvgkjqebrvkjqefvqeveqrfvevdfv"),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text("Phone Number"),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  controller: _phone,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    focusColor: HexColor("#473799"),
                    labelText: "Phone Number",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(width: 1),
                    ),
                    suffixIcon: const Icon(Icons.phone),
                    iconColor: HexColor("#473799"),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  style: ButtonStyle(
                    side: MaterialStateBorderSide.resolveWith(
                        (states) => const BorderSide()),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(HexColor("#11CC85")),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (c) => const VerifyPhoneScreen()));
                  },
                  child: Row(
                    children: [
                      Text(
                        "Verify Phone Number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: HexColor("#FFFFFF"),
                        ),
                      ),
                    ],
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
