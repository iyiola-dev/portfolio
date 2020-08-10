import 'package:flutter/material.dart';
import 'package:portfolio/utils/apptheme.dart';
import 'package:portfolio/wrapper/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => AppTheme(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iyiola.Dev',
      theme: Provider.of<AppTheme>(context).appTheme,
      home: Wrapper(),
    );
  }
}
