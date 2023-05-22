import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_call_app/views/screens/country.dart';
import 'package:video_call_app/views/screens/homepage.dart';
import 'package:video_call_app/views/screens/photo_page.dart';
import 'package:video_call_app/views/screens/video_call.dart';

import 'controller/camer_provider.dart';

late List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ReProvider(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(useMaterial3: true),
          routes: {
            "/": (context) => HomePage(),
            "video_call": (context) => VideoPage(),
            "photo_page": (context) => PhotoPage(),
            "country_page": (context) => CountrySelectPage(),
          },
        );
      },
    );
  }
}
// void main()
// {
//   runApp(MaterialApp(
//     theme: ThemeData(useMaterial3: true),
//     routes: {
//       "/":(context) => HomePage(),
//       "video_call":(context) => VideoPage(),
//       "photo_page":(context) => PhotoPage(),
//       "country_page":(context) => CountrySelectPage(),
//     },
//   ));
// }