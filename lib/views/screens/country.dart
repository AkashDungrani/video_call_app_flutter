import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/globals.dart';

class CountrySelectPage extends StatefulWidget {
  const CountrySelectPage({super.key});

  @override
  State<CountrySelectPage> createState() => _CountrySelectPageState();
}

class _CountrySelectPageState extends State<CountrySelectPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Select Country")),
      body: Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        height: height,
        width: width,
        child: Column(children: [
          ...Country.map((e) => Container(
                padding: EdgeInsets.only(left: 30, right: 8),
                margin: EdgeInsets.only(top: 8, bottom: 8),
                height: height * 0.08,
                width: width,
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.blue),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.shade300,
                          spreadRadius: 1.0,
                          blurRadius: 3.0,
                          offset: Offset(3.0, 3.0))
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade50),
                child: Row(children: [
                  Container(
                      height: height * 0.04,
                      width: width * 0.15,
                      child: Image.asset(
                        e["flag"],
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    e["name"],
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pushNamed("photo_page",arguments: e["image"]);
                        });
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ]),
              )).toList(),
        ]),
      ),
    );
  }
}
