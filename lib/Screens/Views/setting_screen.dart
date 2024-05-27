import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/Screens/Provider/theme_provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 45,
        leading: const Icon(
          CupertinoIcons.back,
          size: 40,
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              CupertinoIcons.heart,
              size: 40,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage("Assets/img.png"),
              ),
            ),
            const Text(
              "Aayush Patel",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            const Text("Flutter Developer"),
            const SizedBox(height: 20,),
            ListTile(
              leading:  Icon(
                CupertinoIcons.moon_fill,
                color: Theme.of(context).iconTheme.color,
                size: Theme.of(context).iconTheme.size,
              ),
              title: const Text(
                "  Dark Mode",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              trailing: Switch(
                activeColor: Colors.white,
                thumbColor: MaterialStateProperty.all(Colors.black),
                inactiveTrackColor: Colors.grey,
                activeTrackColor: Colors.grey,
                value: Provider.of<ThemeProvider>(context).click,
                onChanged: (bool value) {
                  Provider.of<ThemeProvider>(context,listen: false).changeTheme(value);
                  Provider.of<ThemeProvider>(context,listen: false).setTheme(value);
                },
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.square_split_2x2,
                color: Colors.amber,
                size: 30,
              ),
              title: Text(
                "  Story",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            ListTile(
              leading: const Icon(
                CupertinoIcons.person_crop_circle_badge_checkmark,
                color: Colors.pinkAccent,
                size: 30,
              ),
              title: const Text(
                "  Chat Heads",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              trailing: Switch(
                activeColor: Colors.white,
                thumbColor: MaterialStateProperty.all(Colors.black),
                inactiveTrackColor: Colors.grey,
                activeTrackColor: Colors.grey,
                value: true,
                onChanged: (bool value) {
                },
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.person_add,
                color: Colors.cyanAccent,
                size: 30,
              ),
              title: Text(
                "  Groups",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40,left: 40),
              child: Divider(),
            ),
             const ListTile(
              leading: Icon(
                CupertinoIcons.photo,
                color: Colors.blueAccent,
                size: 30,
              ),
              title: Text(
                "  Media and Photos",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
             const ListTile(
              leading: Icon(
                Icons.settings_outlined,
                color: Colors.greenAccent,
                size: 30,
              ),
              title: Text(
                "  Settings and Privacy",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
             const ListTile(
              leading: Icon(
                Icons.chat,
                color: Colors.green,
                size: 30,
              ),
              title: Text(
                "  Help Center",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.bell,
                color: Colors.purple.shade200,
                size: 30,
              ),
              title: const Text(
                "  Notifications",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
