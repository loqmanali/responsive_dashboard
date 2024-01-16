import 'package:flex_widgets/flex_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/menu_app_controller.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const SideMenu(),
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 1200)
            const Expanded(child: SideMenu()),
          const Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      ),
    );
  }
}
