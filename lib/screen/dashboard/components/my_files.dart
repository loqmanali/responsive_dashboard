import 'package:flex_widgets/flex_widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/my_files_model.dart';

import '../../../config/const.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Add New'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: kPrimaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 1.5,
                  vertical: kDefaultPadding / (size.width < 850 ? 2 : 1),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: kDefaultPadding),
        FlexScreenTypeLayout.builder(
          breakpoints: FlexScreenBreakpoints(
            watch: 300,
            mobile: 400,
            tablet: 600,
            desktop: 850,
          ),
          watch: (BuildContext context) {
            return const FileInfoGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            );
          },
          mobile: (BuildContext context) {
            return FileInfoGridView(
              crossAxisCount: 2,
              childAspectRatio: size.width < 850 && size.width > 350 ? 1.3 : 1,
            );
          },
          tablet: (BuildContext context) {
            return FileInfoGridView(
              crossAxisCount: 3,
              childAspectRatio: size.width < 850 && size.width > 350 ? 1.3 : 1,
            );
          },
          desktop: (BuildContext context) {
            return FileInfoGridView(
              crossAxisCount: 4,
              childAspectRatio: size.width < 1400 ? 1.1 : 1.4,
            );
          },
        ),
      ],
    );
  }
}

class FileInfoGridView extends StatelessWidget {
  const FileInfoGridView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (BuildContext context, int index) => FileInfoCard(info: demoMyFiles[index],),
    );
  }
}
