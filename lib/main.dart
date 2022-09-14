import 'package:flutter/material.dart';
import 'package:app/pages/home_page.dart';

void main() {
  runApp(const CollegeDashboardUI());
}

class CollegeDashboardUI extends StatelessWidget {
  const CollegeDashboardUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
			debugShowCheckedModeBanner: false,
			home: HomePage(),
		);
  }
}