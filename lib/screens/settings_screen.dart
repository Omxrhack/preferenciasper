// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:preferenciasper/provaiders/theme_provaider.dart';

import 'package:preferenciasper/share_preferences/share_preferences.dart';
import 'package:preferenciasper/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Preferencias de usuario'),
      ),
      drawer: SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ajustes',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
            ),
            Divider(),
            SwitchListTile.adaptive(
              value: Preferences.isDarkmode,
              title: Text('Darkmode'),
              onChanged: (value) {
                Preferences.isDarkmode = value;
                final themProvider =
                    Provider.of<ThemeProvaider>(context, listen: false);

                value
                    ? themProvider.setDarkMode()
                    : themProvider.setLightMode();
                setState(() {});
              },
            ),
            Divider(),
            RadioListTile<int>(
              value: 1,
              groupValue: Preferences.genere,
              title: Text('Masculino'),
              onChanged: (value) {
                Preferences.genere = value ?? 1;
                setState(() {});
              },
            ),
            Divider(),
            RadioListTile<int>(
              value: 2,
              groupValue: Preferences.genere,
              title: Text('Femenino'),
              onChanged: (value) {
                Preferences.genere = value ?? 2;
                setState(() {});
              },
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: Preferences.name,
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Nombre de la persona usando la app',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
