import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:video_call_app/models/globals.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    List<String> girlimage =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Girls Photo")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: girlimage.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(girlimage[index]))),
            child: Image.network(
                girlimage[index],fit: BoxFit.fill,),
          );
          //  Image.network("https://drive.google.com/uc?export=view&id=${girlimage[index]}");
        },
      ),
    );
  }
}
