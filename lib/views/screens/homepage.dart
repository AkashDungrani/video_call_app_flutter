import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Video Call"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: height*0.002, right: height * 0.002),
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: height * 0.12,
              width: width*0.96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height*0.015),
                color: Colors.blue.shade300,
                 boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1.0,
                      blurRadius: 3.0,
                      offset: Offset(3.0, 3.0))
                ],
              ),
              child: Row(children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      child: Image.asset("assets/images/video-call.png"),
                    )),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Video Call",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: height * 0.022),
                        ),
                        Text(
                          "Instant Connect by Video calls ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: height * 0.017),
                        ),
                        Text(
                          "anytime And anywhere ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: height * 0.017),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed("video_call");
                          });
                        },
                        child: Icon(Icons.arrow_forward_ios)))
              ]),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.12,
              width: width*0.96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.015),
                color: Colors.amber,
                 boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1.0,
                      blurRadius: 3.0,
                      offset: Offset(3.0, 3.0))
                ],
              ),
              child: Row(children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: height * 0.07,
                      child: Image.asset("assets/images/photo.png"),
                    )),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Girls Photos",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: height * 0.022),
                        ),
                        Text(
                          "Show latest images anytime ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: height * 0.017),
                        ),
                        Text(
                          " And anywhere ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize:  height * 0.017),
                        ),
                      ],
                    )),
                Expanded(
                    flex: 2,
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed("country_page");
                          });
                        },
                        child: Icon(Icons.arrow_forward_ios)))
              ]),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.12,
              width: width*0.96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.015),
                color: Colors.pink.shade400,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1.0,
                      blurRadius: 3.0,
                      offset: Offset(3.0, 3.0))
                ],
              ),
              child: Row(children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: height * 0.07,
                      child: Image.asset("assets/images/live.png"),
                    )),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Live Video",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize:  height * 0.022),
                        ),
                        Text(
                          "Show latest images anytime ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize:  height * 0.017),
                        ),
                        Text(
                          " And anywhere ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize:  height * 0.017),
                        ),
                      ],
                    )),
                Expanded(flex: 2, child: Icon(Icons.arrow_forward_ios))
              ]),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.18,
              width: width*0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.015),
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1.0,
                      blurRadius: 3.0,
                      offset: Offset(3.0, 3.0))
                ],
              ),
            ),
             SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.14,
              width: width * 0.96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.015),
                color: Colors.deepPurple.shade400,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1.0,
                      blurRadius: 3.0,
                      offset: Offset(3.0, 3.0))
                ],
              ),
              child: Row(children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: height * 0.07,
                      child: Image.asset("assets/images/share.png"),
                    )),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Share App To Friends",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize:  height * 0.022),
                        ),
                        Text(
                          "Share our app to your Friends",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize:  height * 0.017),
                        ),
                        Text(
                          "Refer Your Frnd",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize:  height * 0.017),
                        ),
                      ],
                    )),
                Expanded(flex: 2, child: Icon(Icons.arrow_forward_ios))
              ]),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.12,
              width: width*0.96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(height * 0.015),
                color: Colors.orangeAccent.shade400,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1.0,
                      blurRadius: 3.0,
                      offset: Offset(3.0, 3.0))
                ],
              ),
              child: Row(children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      height: height * 0.07,
                      child: Image.asset("assets/images/rating.png"),
                    )),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Rate Our App",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize:  height * 0.022),
                        ),
                        Text(
                          "Show latest images anytime ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize:  height * 0.017),
                        ),
                        Text(
                          " And anywhere ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize:  height * 0.017),
                        ),
                      ],
                    )),
                Expanded(flex: 2, child: Icon(Icons.arrow_forward_ios))
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
