import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_dashboard/config/app_assets.dart';
import 'package:responsive_dashboard/config/const.dart';

import '../../../controller/menu_app_controller.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        if (width < 1200)
          IconButton(
            onPressed: () {
              context.read<MenuAppController>().controlMenu();
            },
            icon: const Icon(Icons.menu),
          ),
        if (width > 850)
          Text(
            'Dashboard',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        if (width > 850) Spacer(flex: width > 1200 ? 2 : 1),
        const Expanded(child: SearchField()),
        const ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      width: 250,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile_pic.png',
            height: 38,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Text('Angelina Joli'),
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: kSecondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding * 0.75),
            margin: const EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: SvgPicture.asset(AppAssets.instance.search),
          ),
        ),
      ),
    );
  }
}
