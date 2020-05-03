import 'package:flutter/material.dart';
import 'package:meals/widgets/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: Center(
        child: Text('Configurações!'),
      ),
      drawer: MainDrawer(),
    );
  }
}
