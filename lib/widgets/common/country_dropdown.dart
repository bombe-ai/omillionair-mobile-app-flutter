import 'package:flutter/material.dart';
import 'package:omillionare/constants/app_color.dart';

class CountryDropdown extends StatefulWidget {
  @override
  _CountryDropdownState createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  String _selectedCountry = '+971';
  final List<Country> _countries = [
    Country(
        country: 'UAE',
        phoneCode: '+971',
        countryCode: 'UAE',
        emoji: '🇦🇪'),
    Country(
        country: 'Afghanistan',
        phoneCode: '+93',
        countryCode: 'AF',
        emoji: '🇦🇫'),
    Country(
        country: 'Albania',
        phoneCode: '+355',
        countryCode: 'AL',
        emoji: '🇦🇱'),
    Country(
        country: 'Algeria',
        phoneCode: '+213',
        countryCode: 'DZ',
        emoji: '🇩🇿'),
    Country(
        country: 'Andorra',
        phoneCode: '+376',
        countryCode: 'AD',
        emoji: '🇦🇩'),
    Country(
        country: 'Angola', phoneCode: '+244', countryCode: 'AO', emoji: '🇦🇴'),
    Country(
        country: 'Antigua and Barbuda',
        phoneCode: '+1-268',
        countryCode: 'AG',
        emoji: '🇦🇬'),
    Country(
        country: 'Argentina',
        phoneCode: '+54',
        countryCode: 'AR',
        emoji: '🇦🇷'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 50,
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _selectedCountry == 'Select Country' ? null : _selectedCountry,
          hint: Text(_selectedCountry),
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          isDense: true,
          padding: EdgeInsets.only(left: 12.0,right: 5),
          style: const TextStyle(color: Colors.black),
          onChanged: (String? newValue) {
            setState(() {
              _selectedCountry = newValue!;
            });
          },
          items: _countries.map<DropdownMenuItem<String>>((Country value) {
            return DropdownMenuItem<String>(
              value: value.phoneCode,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(value.emoji),
                  SizedBox(
                    width: 10,
                  ),
                  Text(value.phoneCode),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// Temporary class for testing
class Country {
  final String country;
  final String phoneCode;
  final String countryCode;
  final String emoji;

  Country({
    required this.country,
    required this.phoneCode,
    required this.countryCode,
    required this.emoji,
  });
}
