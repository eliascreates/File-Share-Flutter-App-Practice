
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class StorageTile extends StatelessWidget {
  const StorageTile(
      {super.key,
      required this.imageSrc,
      required this.title,
      required this.numFiles,
      required this.spaceTaken});

  final String imageSrc, title;
  final int numFiles;
  final double spaceTaken;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor.withOpacity(0.15)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              imageSrc,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "${numFiles} Files",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.white54),
                  ),
                ],
              ),
            ),
          ),
          Text("${spaceTaken} GB")
        ],
      ),
    );
  }
}
