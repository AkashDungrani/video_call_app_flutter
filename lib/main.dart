import 'package:flutter/material.dart';
import 'package:video_call_app/views/screens/country.dart';
import 'package:video_call_app/views/screens/homepage.dart';
import 'package:video_call_app/views/screens/photo_page.dart';
import 'package:video_call_app/views/screens/video_call.dart';

void main()
{
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    routes: {
      "/":(context) => HomePage(),
      "video_call":(context) => VideoPage(),
      "photo_page":(context) => PhotoPage(),
      "country_page":(context) => CountrySelectPage(),
    },
  ));
}