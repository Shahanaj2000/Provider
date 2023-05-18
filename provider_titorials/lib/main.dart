import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_titorials/provider/count_provider.dart';
import 'package:provider_titorials/provider/example_one.dart';
import 'package:provider_titorials/provider/favouriteProvider.dart';
import 'package:provider_titorials/provider/theme_provider.dart';
import 'package:provider_titorials/screens/count_example.dart';
import 'package:provider_titorials/screens/example_1.dart';

import 'package:provider_titorials/why_provider.dart';

import 'screens/Favourite/favourite.dart';
import 'screens/theme_mode.dart';
import 'screens/value_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ],
      
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
        title: 'Flutter Demo',
        themeMode: themeChanger.themeMode,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        home:  NotifyListnerScreen(),
      );
      }),
    );
  }
}

