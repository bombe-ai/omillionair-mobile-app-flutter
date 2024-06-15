import 'package:flutter/material.dart';

class CountryDropdown extends StatefulWidget {
  @override
  _CountryDropdownState createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  String _selectedCountry = 'Select Country';
  List<Country> _countries = [
    Country(country: 'Afghanistan', phoneCode: '+93', countryCode: 'AF', emoji: '🇦🇫'),
    Country(country: 'Albania', phoneCode: '+355', countryCode: 'AL', emoji: '🇦🇱'),
    Country(country: 'Algeria', phoneCode: '+213', countryCode: 'DZ', emoji: '🇩🇿'),
    Country(country: 'Andorra', phoneCode: '+376', countryCode: 'AD', emoji: '🇦🇩'),
    Country(country: 'Angola', phoneCode: '+244', countryCode: 'AO', emoji: '🇦🇴'),
    Country(country: 'Antigua and Barbuda', phoneCode: '+1-268', countryCode: 'AG', emoji: '🇦🇬'),
    Country(country: 'Argentina', phoneCode: '+54', countryCode: 'AR', emoji: '🇦🇷'),
  ];

  @override
  Widget build(BuildContext context) {
    // return DropdownButton(
    //   value: _selectedCountry ?? 'Select Country',
    //   icon: Icon(Icons.arrow_drop_down),
    //   onChanged: (value) {
    //     setState(() {
    //       _selectedCountry = value.toString();
    //     });
    //   },
    //   items: [
    //     DropdownMenuItem(
    //       child: Text('Select Country'),
    //       value: 'Select Country',
    //     ),
    //     ..._countries.map((country) {
    //       return DropdownMenuItem(
    //         child: Row(
    //           children: [
    //             Text(country.emoji),
    //             Text("  "),
    //             Text(country.phoneCode),
    //           ],
    //         ),
    //         value: country.countryCode,
    //       );
    //     }).toList(),
    //   ],
    //   isExpanded: true,
    //   style: TextStyle(color: Colors.black),
    //   underline: Container(
    //     height: 1,
    //     color: Colors.grey,
    //   ),
    // );

    return Container(
      width: 130,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Center(
        child: DropdownMenu<String>(
          width: 130,
          initialSelection: _countries.first.countryCode,
          onSelected: (String? value) {
            setState(() {
              _selectedCountry = value.toString();
            });
          },
          dropdownMenuEntries: _countries.map<DropdownMenuEntry<String>>((value) {
            return DropdownMenuEntry<String>(
              value: value.phoneCode,
              label: '${value.phoneCode}',
              labelWidget: Text('${value.country} - ${value.phoneCode}', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),),
              leadingIcon: Text(value.emoji),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(0xFF, 0x01, 0xB5, 0x13)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
            );
          }).toList(),
        ),
      )
    );
  }
}

class Country {
  final String country;
  final String phoneCode;
  final String countryCode;
  final String emoji;

  Country({required this.country, required this.phoneCode, required this.countryCode, required this.emoji});
}
