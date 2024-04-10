import 'package:flutter/material.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});
  
  @override
  State<SettingsView> createState() => _SettingsViewState();

}

class _SettingsViewState extends State<SettingsView> {
  int count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ajustes'),
        ],
      ),
    );
  }
}