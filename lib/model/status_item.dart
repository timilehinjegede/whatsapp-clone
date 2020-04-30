import 'package:flutter/material.dart';

class StatusItem extends StatelessWidget {
  final String contactName;
  final String time;
  final AssetImage image;
  final bool isMuted;
  final bool isViewed;

  const StatusItem(
      {this.contactName, this.time, this.image, this.isMuted, this.isViewed});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
