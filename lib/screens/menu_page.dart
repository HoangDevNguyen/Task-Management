import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_management/screens/home_page.dart';
import 'package:task_management/screens/settings_page.dart';
import 'package:task_management/widgets/constant.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.only(left: getHe(context)*0.03, right: getHe(context)*0.03, top: getHe(context)*0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: getHe(context)*0.03, bottom: getHe(context)*0.03),
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHomePage()));
                        },
                        child: const Icon(
                          Icons.close_rounded,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: getHe(context)*0.13,),
                const Text(
                    'Contact Us',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: getHe(context)*0.03,),
                const Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: getHe(context)*0.03,),
                const Text(
                  'Help',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: getHe(context)*0.03,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SettingsPage())
                    );
                  },
                  child: const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(height: getHe(context)*0.03,),
                GestureDetector(
                  onTap: () => SystemNavigator.pop(),
                  child: const Text(
                    'LogOut',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
