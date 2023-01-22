import 'package:flutter/material.dart';

class DrawerModel {
  final IconData icon;
  final String label;

  const DrawerModel({required this.icon, required this.label});

  static List<DrawerModel> generatedItems = [
    const DrawerModel(icon: Icons.home_rounded, label: 'Home'),
    const DrawerModel(icon: Icons.menu_book_rounded, label: 'Course'),
    const DrawerModel(icon: Icons.star_border_rounded, label: 'Rate the app'),
    const DrawerModel(icon: Icons.login_rounded, label: 'Login settings'),
    const DrawerModel(icon: Icons.dark_mode_rounded, label: 'Night mode'),
    const DrawerModel(icon: Icons.lock_open_rounded, label: 'General password'),
    const DrawerModel(icon: Icons.settings_rounded, label: 'Settings'),
  ];
}
