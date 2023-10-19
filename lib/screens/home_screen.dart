// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:preferenciasper/share_preferences/share_preferences.dart';
import 'package:preferenciasper/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('DarkMode: ${Preferences.isDarkmode}'),
          Divider(),
          Text('Género: ${Preferences.genere}'),
          Divider(),
          Text('Nombre: ${Preferences.name}'),
        ],
      ),
    );
  }
}
