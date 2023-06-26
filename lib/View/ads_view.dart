import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AdsView extends StatefulWidget {
  const AdsView({super.key});

  @override
  State<AdsView> createState() => _AdsViewState();
}

class _AdsViewState extends State<AdsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Ads",
                    style: TextStyle(color: HexColor("#000000"), fontSize: 20),
                  )
                ],
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    getAds(),
                    getAds(),
                    getAds(),
                    getAds(),
                    getAds(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Special Pages",
                    style: TextStyle(color: HexColor("#000000"), fontSize: 20),
                  )
                ],
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    getSpecialPages(),
                    getSpecialPages(),
                    getSpecialPages(),
                    getSpecialPages(),
                    getSpecialPages(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getAds() {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 300,
      height: 89,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: HexColor("#000000"),
        borderRadius: BorderRadius.circular(22),
      ),
      child: const Center(
        child: Text(
          "Youtube",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget getSpecialPages() {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 400,
      height: 152,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: HexColor("#000000"),
        borderRadius: BorderRadius.circular(22),
      ),
      child: const Center(
        child: Text(
          "Youtube",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
