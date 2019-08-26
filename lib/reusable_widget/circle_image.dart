import 'package:flutter/material.dart';
class CircleImage extends StatelessWidget {
  //CircleImage({Key key, this.url}) : super(key: key);
  CircleImage(this.url);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: NetworkImage(url ?? "",),fit: BoxFit.cover),),
    );
  }
}