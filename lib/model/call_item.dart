import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/margin.dart';

class CallItem extends StatelessWidget {
  final AssetImage image;
  final String contactName;
  final String date;
  final bool isVideo;
  final bool isMissed;
  final bool isCallMade;

  CallItem(
      {this.image, this.contactName, this.date, this.isVideo, this.isMissed,this.isCallMade});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Theme.of(context).accentColor,
      ),
      title: Text('Temi'),
      subtitle: Row(
        children: <Widget>[
          isCallMade ? Icon(
            Icons.call_made,
            size: 16,
            color: isMissed ? Colors.red : Theme.of(context).accentColor,
          ) : Icon(
            Icons.call_received,
            size: 16,
            color: isMissed ? Colors.red : Theme.of(context).accentColor,
          ),
          XMargin(5),
          Text('26, April, 21:04'),
        ],
      ),
      trailing: isVideo
          ? Icon(
              Icons.videocam,
              color: Theme.of(context).accentColor,
            )
          : Icon(
              Icons.call,
              color: Theme.of(context).accentColor,
            ),
    );
  }
}
