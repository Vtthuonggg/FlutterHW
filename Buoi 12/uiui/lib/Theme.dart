import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ThemeNotifier.dart';

class ThemeWrapper extends StatelessWidget {
  final Widget child;

  const ThemeWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: _ThemedApp(child: child),
    );
  }
}

class _ThemedApp extends StatelessWidget {
  final Widget child;

  const _ThemedApp({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeNotifier.getTheme(),
      home: child,
    );
  }
}
