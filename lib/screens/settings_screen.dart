import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatelessWidget {
  Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Colors.deepPurpleAccent
      ),
      body:
      SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {
                  value=true;
                  theme:ThemeData.dark();
                },
                initialValue: false,
                leading: Icon(Icons.dark_mode),
                title: Text('Dark Mode'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}