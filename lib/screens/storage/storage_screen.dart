import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

import '../dashboard/components/storage_details.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: bgColor),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            StorageDetails(),
          ],
        ),
      )),
    );
  }
}
