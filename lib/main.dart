import 'package:astria_flutter/colors.dart';
import 'package:astria_flutter/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Astria());
}

class Astria extends StatelessWidget {
  const Astria({super.key});

  // Application root widget.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Astria',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: ThemeData(
        colorScheme: AstriaColors.colorScheme,
        useMaterial3: true,
      ),
    );
  }
}
