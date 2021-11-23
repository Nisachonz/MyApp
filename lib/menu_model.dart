
import 'package:flutter/material.dart';

import 'Model/app_route.dart';


class Menu {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function(BuildContext context) onTap;

  const Menu({
    this.title,
    this.icon,
    this.iconColor = Colors.grey,
    this.onTap,
  });
}

class MenuViewModel {
  MenuViewModel();

  List<Menu> get items => <Menu>[
    Menu(
      iconColor: Colors.purpleAccent,
      title: 'Profile',
      icon: Icons.person,
      onTap: (
          context,
          ) {
        Navigator.pushNamed(context, AppRoute.homeRoute);
        //
      },
    ),
    Menu(
      iconColor: Colors.purpleAccent,
      title: 'ประเภทห้องเช่า',
      icon: Icons.merge_type,
      onTap: (
          context,
          ) {
        Navigator.pushNamed(context, AppRoute.typeRoute);
        //
      },
    ),
    Menu(
      iconColor: Colors.purpleAccent,
      title: 'เปรียบเทียบราคาห้องเช่า',
      icon: Icons.burst_mode,
      onTap: (
          context,
          ) {
        Navigator.pushNamed(context, AppRoute.registerRoute);
        //
      },
    ),
    Menu(
      iconColor: Colors.purpleAccent,
      title: 'ออกจากระบบ',
      icon: Icons.cancel,
      onTap: (
          context,
          ) async {
        Navigator.pushNamed(context, AppRoute.registerRoute);
        //
      },
    ),


  ];

}
