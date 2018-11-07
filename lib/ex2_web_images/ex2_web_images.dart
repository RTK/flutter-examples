import 'package:flutter/widgets.dart';

class Ex2_Web_Images extends StatelessWidget {
  final List<String> imageUrls = [
    'https://images.freeimages.com/images/large-previews/72c/fox-1522156.jpg',
    'https://images.freeimages.com/images/large-previews/25d/eagle-1523807.jpg',
    'https://images.freeimages.com/images/large-previews/ac0/cat-1364386.jpg'
  ];

  @override
  Widget build(BuildContext context) => ListView(
      children: imageUrls.map((String url) => Image.network(url)).toList());
}
