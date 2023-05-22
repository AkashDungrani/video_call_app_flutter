import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../../controller/camer_provider.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;

  getVideo() {
    _controller = VideoPlayerController.network(
        "https://drive.google.com/uc?export=download&id=1Epb1YvmKY9MJwHcfMTmqFckoNx0lvQMa")
      ..initialize().then((value) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getVideo();
    getdata();
  }

  getdata() {
    Provider.of<ReProvider>(context, listen: false)
        .updateIndex(i: 1, mounted: mounted);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
          ),
          Consumer<ReProvider>(
            builder: (context, value, child) {
              return (value.cameraController.value.isInitialized)
                  ? Align(
                      alignment: Alignment(0.8, 0.65),
                      child: Container(
                        height: 160,
                        width: 110,
                        child: CameraPreview(value.cameraController),
                      ),
                    )
                  : SizedBox();
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.black54,
                      mini: true,
                      child: Icon(
                        Icons.mic,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.red,
                      isExtended: true,
                      child: Icon(
                        Icons.call,
                        size: 28,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Consumer<ReProvider>(
                      builder: (context, value, child) {
                        return FloatingActionButton(
                          onPressed: () {
                            (value.index == 1)
                                ? value.updateIndex(i: 0, mounted: mounted)
                                : value.updateIndex(i: 1, mounted: mounted);
                          },
                          backgroundColor: Colors.black54,
                          mini: true,
                          child: Icon(
                            Icons.flip_camera_ios_rounded,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
