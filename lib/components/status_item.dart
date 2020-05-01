import 'package:flutter/material.dart';

class StatusItem extends StatelessWidget {
  final String contactName;
  final String time;
  final String imagePath;
  final bool isViewed;
  final bool isRecent;

  const StatusItem(
      {this.contactName,
      this.time,
      this.imagePath,
      this.isViewed,
      this.isRecent});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: isRecent
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
          : isViewed
              ? Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).accentIconTheme.color,
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
