//todo: This is where all our application constants will be present and this is different for each application.final SharedPreferences prefs = await SharedPreferences.getInstance();
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPrefs;

void initializeSharedPref() async {
  sharedPrefs = await SharedPreferences.getInstance();
}
