import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_hub/widgets/app_bar.dart';
import 'package:news_hub/widgets/country_dropdown.dart';
import 'package:news_hub/widgets/custom_switch.dart';
import 'package:news_hub/widgets/list_tile.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({
    super.key, required this.country,
  });
  final String country;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
             SizedBox(
              height: 100.0,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xff22557A),
                ),
                child: AppBarTitle(
                  country: country,
                ),
              ),
            ),
            const CustomListTile(
              icon: FontAwesomeIcons.at,
              title: "Email",
              end: Text(
                "powershop9640@gmail.com",
                style: TextStyle(color: Color(0xff404040), fontSize: 11),
              ),
            ),
            Container(
              color: const Color.fromARGB(170, 208, 206, 206),
              height: 1,
              width: double.infinity,
            ),
            const CustomListTile(
              icon: Icons.notifications_outlined,
              title: "Notifitications",
              end: CustomSwitch(),
            ),
            Container(
              color: const Color.fromARGB(170, 208, 206, 206),
              height: 1,
              width: double.infinity,
            ),
            CustomListTile(
              icon: Icons.language_outlined,
              title: "Country",
              end: CountryDropdown(),
            ),
            Container(
              color: const Color.fromARGB(170, 208, 206, 206),
              height: 1,
              width: double.infinity,
            ),
            const CustomListTile(icon: Icons.help_outline, title: "Help")
          ],
        ),
      ),
    );
  }
}
