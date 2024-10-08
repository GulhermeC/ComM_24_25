import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Managing state for each switch
  bool pushNotifications = true;
  bool emailNotifications = false;
  bool autoplay = true;
  bool privateSession = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black87, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            _buildExpansionTile(
              context,
              "Account",
              Icons.account_circle,
              [
                _buildSimpleSetting("Change Username", Icons.edit),
                _buildSimpleSetting("Change Password", Icons.lock),
              ],
            ),
            Divider(color: Colors.grey),
            _buildExpansionTile(
              context,
              "Notifications",
              Icons.notifications,
              [
                _buildSwitchSetting("Push Notifications", pushNotifications,
                    (value) {
                  setState(() {
                    pushNotifications = value;
                  });
                }),
                _buildSwitchSetting("Email Notifications", emailNotifications,
                    (value) {
                  setState(() {
                    emailNotifications = value;
                  });
                }),
              ],
            ),
            Divider(color: Colors.grey),
            _buildExpansionTile(
              context,
              "Playback",
              Icons.music_note,
              [
                _buildSimpleSetting("Audio Quality", Icons.high_quality),
                _buildSwitchSetting("Autoplay", autoplay, (value) {
                  setState(() {
                    autoplay = value;
                  });
                }),
              ],
            ),
            Divider(color: Colors.grey),
            _buildExpansionTile(
              context,
              "Privacy",
              Icons.lock,
              [
                _buildSwitchSetting("Private Session", privateSession, (value) {
                  setState(() {
                    privateSession = value;
                  });
                }),
                _buildSimpleSetting("Manage Data", Icons.data_usage),
              ],
            ),
            Divider(color: Colors.grey),
          ],
        ),
      ),
    );
  }

  // Helper method to build an ExpansionTile for each settings section
  Widget _buildExpansionTile(
      BuildContext context, String title, IconData icon, List<Widget> children) {
    return ExpansionTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      children: children,
    );
  }

  // Helper method to build a simple setting option
  Widget _buildSimpleSetting(String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        // Add functionality for these settings here
      },
    );
  }

  // Helper method to build a switch setting option
  Widget _buildSwitchSetting(
      String title, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      activeColor: Colors.green,
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      value: value,
      onChanged: onChanged,
    );
  }
}
