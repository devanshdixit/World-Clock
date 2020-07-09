import 'package:flutter/material.dart';
import 'package:theninjaclock/pages/home.dart';
import 'package:theninjaclock/pages/choose_location.dart';
import 'package:theninjaclock/pages/loading.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
