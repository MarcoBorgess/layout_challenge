import 'package:flutter/material.dart';
import 'package:layout_challenge/home_page.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(fontFamily: 'BRHendrix'),
          initialRoute: '/',
          routes: {
            '/': (context) => const HomePage(),
            '/login': (context) => const HomePage(),
            '/register': (context) => const HomePage(),
          },
        );
      },
    );
  }
}
