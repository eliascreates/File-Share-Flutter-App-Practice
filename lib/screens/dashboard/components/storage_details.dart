import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'chart.dart';
import 'storage_tile.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

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
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Chart(),
          StorageTile(
            imageSrc: "assets/icons/Documents.svg",
            title: "Document Files",
            numFiles: 1329,
            spaceTaken: 1.3,
          ),
          StorageTile(
            imageSrc: "assets/icons/media.svg",
            title: "Media Files",
            numFiles: 1328,
            spaceTaken: 15.13,
          ),
          StorageTile(
            imageSrc: "assets/icons/folder.svg",
            title: "Other Files",
            numFiles: 1329,
            spaceTaken: 1.8,
          ),
          StorageTile(
            imageSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            numFiles: 1329,
            spaceTaken: 1.3,
          ),
        ],
      ),
    );
  }
}
