import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/call_item.dart';
import 'package:whatsapp_clone/model/call.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Call.getAllCalls.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            CallItem(
              // no images or avatars for now
              imagePath: Call.getAllCalls[index].imagePath,
              // filter through the contact name of the call dummy data
              contactName: Call.getAllCalls[index].contactName,
              // filter through the isMissed value of the call dummy data
              isMissed: Call.getAllCalls[index].isMissed,
              // filter through the isVideo value of the call dummy data
              isVideo: Call.getAllCalls[index].isVideo,
              // filter through the isCallMade value of the call dummy data
              isCallMade: Call.getAllCalls[index].isCallMade,
              // filter through the date of the call dummy data
              date: Call.getAllCalls[index].date,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Divider(),
            ),
          ],
        );
      },
    );
  }
}
