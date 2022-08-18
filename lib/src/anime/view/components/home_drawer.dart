import 'package:anime_portal/src/anime/view/anime/permissions_page.dart';
import 'package:anime_portal/src/app/helpers/launch_mail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 20, 20, 34),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Anime Portal',
                    style: GoogleFonts.cinzel(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: const Text(
              'Report a bug!',
            ),
            onTap: () {
              sendMail('General');
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              CupertinoIcons.question,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: const Text(
              'Help',
            ),
            onTap: () {
              sendMail('General');
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              CupertinoIcons.person_alt_circle,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: const Text(
              'About me',
            ),
            onTap: () {
              launchURL('https://www.facebook.com/merazul.dihan.7');
            },
          ),
          const Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PermissionsPage(),
              ));
            },
            leading: Icon(
              CupertinoIcons.square_stack_3d_down_right,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: const Text('Permissions'),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
