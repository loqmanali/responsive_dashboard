import 'package:flutter/material.dart';

import '../../config/const.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          const HeaderWidget(),
          const SizedBox(height: kDefaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    const MyFiles(),
                    const SizedBox(height: kDefaultPadding),
                    const RecentFiles(),
                    if (MediaQuery.sizeOf(context).width < 850)
                      const SizedBox(height: kDefaultPadding),
                    if (MediaQuery.sizeOf(context).width < 850)
                      const StorageDetails(),
                  ],
                ),
              ),
              const SizedBox(width: kDefaultPadding),
              if (MediaQuery.sizeOf(context).width > 850)
                const Expanded(
                  flex: 2,
                  child: StorageDetails(),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
