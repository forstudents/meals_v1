import 'package:flutter/material.dart';
import 'package:meals/models/settings.dart';
import 'package:meals/widgets/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen(this.settings, this.onSettingsChange);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();

  final Settings settings;

  final Function(Settings) onSettingsChange;
}

class _SettingsScreenState extends State<SettingsScreen> {
  Settings settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChange(settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _createSwitch(
                    'Sem Glúten',
                    'Exibe apenas refeições sem glúten',
                    settings.isGlutenFree,
                    (value) => setState(() => settings.isGlutenFree = value)),
                _createSwitch(
                    'Sem Lactose',
                    'Exibe apenas refeições sem lactose',
                    settings.isLactoseFree,
                    (value) => setState(() => settings.isLactoseFree = value)),
                _createSwitch(
                    'Vegana',
                    'Exibe apenas refeições veganas',
                    settings.isVegan,
                    (value) => setState(() => settings.isVegan = value)),
                _createSwitch(
                    'Vegetariana',
                    'Exibe apenas refeições vegetarianas',
                    settings.isVegetarian,
                    (value) => setState(() => settings.isVegetarian = value)),
              ],
            ),
          )
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
