import 'package:flutter/material.dart';

import '../app/theme/app_theme.dart';
import '../features/blinkit_money/presentation/screens/blinkit_money_screen.dart';

class SagarApp extends StatelessWidget {
  const SagarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sagar',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      builder: (context, child) {
        final mediaQuery = MediaQuery.of(context);
        return MediaQuery(
          data: mediaQuery.copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child ?? const SizedBox.shrink(),
        );
      },
      home: const BlinkitMoneyScreen(),
    );
  }
}
