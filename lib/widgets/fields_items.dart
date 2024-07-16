import 'package:flutter/material.dart';
import 'package:news_hub/models/flieds_model.dart';
import 'package:news_hub/screens/home.dart';

class FieldsItems extends StatelessWidget {
  const FieldsItems({
    super.key,
    required this.model,  this.selected="general", required this.country,
  });
  final String selected;
  final String country;

  final FieldsModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(category: model.fieldName,selected: model.fieldName,country: country,),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 2.0,bottom: 5),
        child: Stack(
          children: [
            Container(
              width: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(model.imagePath),
                  opacity:selected==model.fieldName?  0.4:0.6,
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  model.fieldName,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff61EBCA),
                    fontFamily: "JockeyOne",
                  ),
                ),
              ),
            ),
            selected==model.fieldName? Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 5,
                      width: 130,
                      color: const Color(0xff61EBCA),
                    ),
                  ):const SizedBox(),],
        ),
      ),
    );
  }
}
