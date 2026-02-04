import 'package:flutter/material.dart';
import 'package:flutter_ecomm_app/utils/theme/theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: Scaffold(body: Center(child: Text('This is the start'))),
    );
  }
}
