import 'package:flutter/material.dart';
import 'package:admin/constants.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recent Files", style: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,

              columns: [
                DataColumn(
                  label: Text("File Name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Size"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => RecentFileRow(demoRecentFiles[index]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

DataRow RecentFileRow(RecentFile file) {
  return DataRow(onLongPress: () {}, cells: [
    DataCell(
      Row(
        children: [
          SvgPicture.asset(file.icon),
          const SizedBox(width: defaultPadding),
          Text(file.title)
        ],
      ),
    ),
    DataCell(Text(file.date)),
    DataCell(Text(file.size)),
  ]);
}
