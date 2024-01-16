import '../config/app_assets.dart';

class RecentFile {
  final String? icon;
  final String? title;
  final String? date;
  final String? size;

  RecentFile({
    this.icon,
    this.title,
    this.date,
    this.size,
  });
}

List demoRecentFiles = [
  RecentFile(
    icon: AppAssets.instance.xdFile,
    title: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: AppAssets.instance.figmaFile,
    title: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFile(
    icon: AppAssets.instance.docFile,
    title: "Document",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFile(
    icon: AppAssets.instance.soundFile,
    title: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: AppAssets.instance.mediaFile,
    title: "Media File",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: AppAssets.instance.pdfFile,
    title: "Sales PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFile(
    icon: AppAssets.instance.excelFile,
    title: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
