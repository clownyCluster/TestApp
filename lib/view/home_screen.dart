import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_tuts/view_model/home_state.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  add() {
    setState(() {
      count++;
    });
  }

  homeState state = Get.put(homeState());
  bool isDark = true;
  @override
  Widget build(BuildContext context) {
    print('widget being build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Dark Mode'),
                Switch(
                    value: isDark,
                    onChanged: (val) {
                      setState(() {
                        isDark = val;
                      });
                      isDark
                          ? Get.changeTheme(ThemeData.light())
                          : Get.changeTheme(ThemeData.dark());
                    })
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar(
          icon: Icon(Icons.cabin),
          // animationDuration: Duration(seconds: 1),
          backgroundGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.pink, Colors.blueGrey]),
          // borderColor: Colors.blue,
          dismissDirection: DismissDirection.horizontal,
          'Tuck you?',
          'I really wanna Tuck you bad',
        );
      }),
    );
  }
}
