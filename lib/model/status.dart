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
    return ListTile(
      leading: isMuted
          ? Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  border: Border.all(
                    width: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                  shape: BoxShape.circle),
            )
          : CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).accentColor,
            ),
      title: Text(contactName),
      subtitle: Text(time),
    );
  }
}
