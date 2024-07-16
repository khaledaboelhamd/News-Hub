import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key, required this.country,
  });
  final String country;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Row(
          children: [
             Text(
              "News",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(" Hub",
                style: TextStyle(
                    color: Color(0xff5BDDBE),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Text(country)
      ],
    );
  }
}
