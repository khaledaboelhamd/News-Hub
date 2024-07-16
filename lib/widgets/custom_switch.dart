import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
     return Transform.scale(
      scale: 0.9,

      child: Switch(
      value: _isSwitched,
      onChanged: (value) {
        setState(() {
          _isSwitched = value;
        });
      },
      activeColor: const Color(0xff5BDDBE),
      activeTrackColor: const Color.fromARGB(255, 255, 255, 255),
      inactiveTrackColor: Colors.white,
      trackOutlineColor: WidgetStateProperty.all<Color>(Colors.black),
trackOutlineWidth: WidgetStateProperty.all<double?>(1)
    ),);
  }
}
