import 'package:flutter/material.dart';

class Detailpage extends StatefulWidget {
  final String courseImage;
  final String courseName;
  const Detailpage({
    super.key,
    required this.courseImage,
    required this.courseName
  });

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(tag: "Course Image", child: Image.network(widget.courseImage, height: 200, width: 200,)),
        Text(widget.courseName,style: TextStyle(fontSize: 20),)
      ],
    );
  }
}
