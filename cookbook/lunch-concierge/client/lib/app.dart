import 'package:flutter/material.dart';

import 'lunch_page.dart';
import 'theme.dart';

final class LunchConciergeApp extends StatelessWidget {
  const LunchConciergeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lunch Concierge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: LunchPalette.machine,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: LunchPalette.paper,
        useMaterial3: true,
      ),
      home: const LunchPage(),
    );
  }
}
