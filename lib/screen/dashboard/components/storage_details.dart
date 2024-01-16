import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/app_assets.dart';
import 'package:responsive_dashboard/screen/dashboard/components/chart.dart';
import 'package:responsive_dashboard/screen/dashboard/components/storage_info_card.dart';

import '../../../config/const.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          const ChartWidget(),
          StorageInfoCard(
            title: 'Documents Files',
            svgSrc: AppAssets.instance.documents,
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            title: 'Media Files',
            svgSrc: AppAssets.instance.media,
            amountOfFiles: '15.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            title: 'Other Files',
            svgSrc: AppAssets.instance.folder,
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            title: 'Unknown',
            svgSrc: AppAssets.instance.unknown,
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
        ],
      ),
    );
  }
}
