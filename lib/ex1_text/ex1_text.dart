import 'package:flutter/widgets.dart';

class Ex1_Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
      child: Center(
          child: RichText(
        text: TextSpan(
            text: 'Hallo!',
            style:
                TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 32.0)),
      )));
}
