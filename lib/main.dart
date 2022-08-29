// @dart=2.9

import 'dart:io';
import 'package:flutter_application_edapt_network_connection_learning/services/provider.dart';

import 'package:provider/provider.dart';


import 'package:flutter/material.dart';

import 'view/splashscreen.dart';

void main() {
  runApp(
    const MyApp(),
  );
  HttpOverrides.global = MyHttpOverrides();
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => ProviderClass()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(key: null,),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
