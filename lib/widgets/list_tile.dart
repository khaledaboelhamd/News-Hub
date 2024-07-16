
import 'package:flutter/material.dart';


class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    this.end,
  });
  // ignore: prefer_typing_uninitialized_variables
  final  icon;
  final String title;
  final Widget? end;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 70,

      child: Center(
        child: ListTile(
          leading: Icon(
            icon,
            color: const Color(0xff5BDDBE),
            size: 24,
          ),
          title:  Text(
            title,
            style:  const TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 24,
              fontFamily: "JockeyOne",
            ),
          ),
          trailing: end??const Text("")
        ),
      ),
    );
  }
}
