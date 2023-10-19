// ignore_for_file: sort_child_properties_last, unused_element

import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          _DrawerCustom(),
          _ListTitleCustom(
            icon: Icons.pages_outlined,
            title: 'Home',
            routeName: 'home',
          ),
          _ListTitleCustom(
            icon: Icons.settings,
            title: 'Settings',
            routeName: 'settings',
          ),
          _ListTitleCustom(
            icon: Icons.people_outline,
            title: 'People ',
            routeName: 'people',
          )
        ],
      ),
    );
  }
}

class _ListTitleCustom extends StatelessWidget {
  final IconData icon;
  final String title;
  final String routeName;
  const _ListTitleCustom({
    required this.title,
    required this.routeName,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        title,
        style: const TextStyle(color: Colors.blueGrey),
      ),
      onTap: () {
        Navigator.popAndPushNamed(context, routeName);
      },
    );
  }
}

class _DrawerCustom extends StatelessWidget {
  const _DrawerCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
