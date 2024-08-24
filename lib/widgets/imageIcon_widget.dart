import 'package:flutter/material.dart';

class ImageIcon extends StatelessWidget {
  final String urlImage;
  const ImageIcon({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        urlImage,
        height: 30,
      ),
    );
  }
}
