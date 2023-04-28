import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 181, 79, 59),
);

var kDarkColorShceme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 85, 30, 30),
);

void main() {
  // ensure portrait mode only
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) => {
        runApp(
          MaterialApp(
            darkTheme: ThemeData.dark().copyWith(
              useMaterial3: true,
              colorScheme: kDarkColorShceme,
              cardTheme: const CardTheme().copyWith(
                color: kDarkColorShceme.secondaryContainer,
                margin: const EdgeInsets.all(16),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kDarkColorShceme.primaryContainer,
                  foregroundColor: kDarkColorShceme.onPrimaryContainer,
                ),
              ),
            ),
            theme: ThemeData().copyWith(
              useMaterial3: true,
              colorScheme: kColorScheme,
              appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: kColorScheme.onPrimaryContainer,
                foregroundColor: kColorScheme.primaryContainer,
              ),
              cardTheme: const CardTheme().copyWith(
                color: kColorScheme.secondaryContainer,
                margin: const EdgeInsets.all(16),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kColorScheme.primaryContainer),
              ),
              textTheme: ThemeData().textTheme.copyWith(
                    titleLarge: TextStyle(
                      color: kColorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            ),
            themeMode: ThemeMode.system, // is default
            home: const Expenses(),
          ),
        )
      });
}
