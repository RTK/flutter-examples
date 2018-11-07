import 'package:flutter/widgets.dart';

class Ex3_Interactions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => S();
}

class S extends State<Ex3_Interactions> {
  int _clicked = 0;
  void doClick() {
    setState(() {
      _clicked++;
    });
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: doClick,
        child: Center(
          child: Text('Geklickt: $_clicked'),
        ),
      );
}
