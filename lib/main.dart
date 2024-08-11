import 'package:flutter/material.dart';
import 'package:habit_tracking/components/quote_for_the_day.dart';
import 'package:habit_tracking/styles.dart';
import 'util.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isDarkMode;

  ThemeData getThemeData(bool? isDarkMode) {
    TextTheme textTheme =
        createTextTheme(context, "Roboto", "Playfair Display");
    MaterialTheme theme = MaterialTheme(textTheme);
    if (isDarkMode == null) {
      Brightness brightness =
          View.of(context).platformDispatcher.platformBrightness;
      return brightness == Brightness.light ? theme.light() : theme.dark();
    } else if (isDarkMode == true) {
      return theme.dark();
    }
    return theme.light();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: Text('habittracker.',
              style: HTStyles.getAppTitleFont()),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                QuoteForTheDay(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


