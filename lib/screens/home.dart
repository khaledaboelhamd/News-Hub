// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_hub/widgets/app_bar.dart';
import 'package:news_hub/widgets/custom_drawer.dart';
import 'package:news_hub/widgets/fields_builder.dart';
import 'package:news_hub/widgets/vertical_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.category = "general",
    this.country = "us",
    this.selected = "general",
  });
  final String category;
  final String country;
  final String selected;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff22557A),
            title:  AppBarTitle(country:country),
            actions: [
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ),
            ],
          ),
          endDrawer:  MyCustomDrawer(country: country),
          body: Column(
            children: [
              FieldsBuilder(selected: selected,country:country),
              VerticalList(
                category: category,
                country:country

              ),
            ],
          )),
    );
  }
}
