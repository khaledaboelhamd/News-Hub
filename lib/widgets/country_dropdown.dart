import 'package:flutter/material.dart';
import 'package:news_hub/screens/home.dart';

// ignore: must_be_immutable
class CountryDropdown extends StatelessWidget {
  CountryDropdown({super.key});

  String? selectedCountry;
  final Map<String, String> countries = {
    'UAE': 'ae',
    'Argentina': 'ar',
    'Austria': 'at',
    'Australia': 'au',
    'Belgium': 'be',
    'Bulgaria': 'bg',
    'Brazil': 'br',
    'Canada': 'ca',
    'Germany': 'de',
    'Egypt': 'eg',
    'France': 'fr',
    'UK': 'gb',
    'Greece': 'gr',
    'Hungary': 'hu',
    'Ireland': 'ie',
    'Israel': 'il',
    'India': 'in',
    'Italy': 'it',
    'Japan': 'jp',
    'Latvia': 'lv',
    'Mexico': 'mx',
    'Malaysia': 'my',
    'Nigeria': 'ng',
    'Poland': 'pl',
    'Portugal': 'pt',
    'Romania': 'ro',
    'Russia': 'ru',
    'Sweden': 'se',
    'Singapore': 'sg',
    'Slovakia': 'sk',
    'Thailand': 'th',
    'Turkey': 'tr',
    'Taiwan': 'tw',
    'Ukraine': 'ua',
    'US': 'us',
    'Venezuela': 've',
  };

  @override
  Widget build(BuildContext context) {
    List<String> sortedCountries = countries.keys.toList()..sort();

    return SizedBox(
      width: 100,
      child: Center(
        child: DropdownButton<String>(
          value: selectedCountry,
          items: sortedCountries.map((String country) {
            return DropdownMenuItem<String>(
              value: countries[country], // Use the correct value here
              child: Text(country),
            );
          }).toList(),
          onChanged: (String? newValue) {
                    Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(country: newValue!,),
          ),
        );
          },
        ),
      ),
    );
  }
}
