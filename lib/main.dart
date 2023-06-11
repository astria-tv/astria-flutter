import 'package:astria_flutter/colors.dart';
import 'package:astria_flutter/views/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Astria());
}

class Astria extends StatelessWidget {
  const Astria({super.key});

  // Application root widget.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astria',
      theme: ThemeData(
        colorScheme: AstriaColors.colorScheme,
        useMaterial3: true,
      ),
      home: const Dashboard(title: 'Astria'),
    );
  }
}


