// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; 
import 'package:componentes/src/routes/routes.dart';

import 'package:componentes/src/pages/not_found_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componenetes APP',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],  
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', 'ES'),      
      ],    
      initialRoute: '/', 
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => NotFoundPage()
        );
      },
    );
  }
}