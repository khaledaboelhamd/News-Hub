import 'package:flutter/material.dart';
import 'package:news_hub/models/flieds_model.dart';
import 'package:news_hub/widgets/fields_items.dart';

class FieldsBuilder extends StatelessWidget {
  FieldsBuilder({
    super.key, required this.selected, required this.country,
    
  });
  final String selected;
  final String country;
  final List<FieldsModel> listOfModels = [
        FieldsModel(
      imagePath: "assets/general.avif",
      fieldName: "general",
    ),FieldsModel(
      imagePath: "assets/business.avif",
      fieldName: "business",
    ),
    FieldsModel(
      imagePath: "assets/sports.avif",
      fieldName: "sports",
    ),  FieldsModel(
      imagePath: "assets/technology.avif",
      fieldName: "technology",
    ),

    FieldsModel(
      imagePath: "assets/entertaiment.avif",
      fieldName: "entertaiment",
    ),
    FieldsModel(
      imagePath: "assets/health.avif",
      fieldName: "health",
    ),
    FieldsModel(
      imagePath: "assets/science.avif",
      fieldName: "science",
    ),
  
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 10.7,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listOfModels.length,
        itemBuilder: (_, ind) {
          return FieldsItems(
            model: listOfModels[ind],
            selected: selected,
            country:country
          );
        },
      ),
    );
  }
}
