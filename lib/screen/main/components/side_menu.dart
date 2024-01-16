import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/config/app_assets.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset('assets/images/logo.png'),
          ),
          DrawerListTile(
            title: 'Dashboard',
            svgSrc: AppAssets.instance.menuDashboard,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Transaction',
            svgSrc: AppAssets.instance.menuTran,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Task',
            svgSrc: AppAssets.instance.menuTask,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Documents',
            svgSrc: AppAssets.instance.menuDoc,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Store',
            svgSrc: AppAssets.instance.menuStore,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Notification',
            svgSrc: AppAssets.instance.menuNotification,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Profile',
            svgSrc: AppAssets.instance.menuProfile,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Settings',
            svgSrc: AppAssets.instance.menuSetting,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.onTap,
  });

  final String title;
  final String svgSrc;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: const ColorFilter.mode(
          Colors.white54,
          BlendMode.srcATop,
        ),
        height: 16.0,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
