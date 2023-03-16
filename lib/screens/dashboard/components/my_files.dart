import 'package:admin/constants.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import 'file_details_card.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("My Files", style: Theme.of(context).textTheme.titleMedium),
            ElevatedButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: (Responsive.isMobile(context))
                      ? defaultPadding * 0.75
                      : defaultPadding * 1.5,
                  vertical: (Responsive.isMobile(context))
                      ? defaultPadding / 2
                      : defaultPadding,
                ),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.add),
                  Text("Add New"),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileDetailsCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1.1,
          ),
          tablet: FileDetailsCardGridView(),
          desktop: FileDetailsCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        )
      ],
    );
  }
}

class FileDetailsCardGridView extends StatelessWidget {
  const FileDetailsCardGridView({
    super.key,
    this.childAspectRatio = 1,
    this.crossAxisCount = 4,
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
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRatio),
      itemBuilder: (context, index) =>
          FileDetailsCard(info: demoMyFiles[index]),
    );
  }
}
