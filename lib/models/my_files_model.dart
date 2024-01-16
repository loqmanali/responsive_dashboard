import 'package:flutter/material.dart';
import 'package:responsive_dashboard/config/app_assets.dart';
import 'package:responsive_dashboard/config/const.dart';

class CloudStorageInfo {
  final String? svgSrc;
  final String? title;
  final String? totalStorage;
  final int? numOfFiles;
  final int? percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}


List demoMyFiles = [
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 1328,
    svgSrc: AppAssets.instance.documents,
    totalStorage: "1.9GB",
    color: kPrimaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "Google Drive",
    numOfFiles: 1328,
    svgSrc: AppAssets.instance.googleDrive,
    totalStorage: "2.9GB",
    color: const Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "One Drive",
    numOfFiles: 1328,
    svgSrc: AppAssets.instance.oneDrive,
    totalStorage: "1GB",
    color: const Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 5328,
    svgSrc: AppAssets.instance.dropBox,
    totalStorage: "7.3GB",
    color: const Color(0xFF007EE5),
    percentage: 78,
  ),
];
