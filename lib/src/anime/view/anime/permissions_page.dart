import 'package:flutter/material.dart';

class PermissionsPage extends StatelessWidget {
  const PermissionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permissions'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: [
            ListTile(
              title: Text('Storage'),
            ),
            const Divider(),
            ListTile(
              title: Text('Internet'),
            ),
            const Divider(),
            ListTile(
              title: Text('Notifications'),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
