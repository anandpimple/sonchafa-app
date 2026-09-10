import 'package:flutter/material.dart';

import '../core/theme/sonchafa_theme.dart';
import '../features/shell/presentation/app_shell.dart';

class SonchafaApp extends StatelessWidget {
  const SonchafaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sonchafa',
      debugShowCheckedModeBanner: false,
      theme: SonchafaTheme.light(),
      darkTheme: SonchafaTheme.dark(),
      themeMode: ThemeMode.system,
      home: const AppShell(),
    );
  }
}
