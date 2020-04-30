import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/call_item.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index){
        return Column(
          children: <Widget>[
            CallItem(
              contactName: 'Temi',
              isMissed: true,
              isVideo: false,
              isCallMade: true,
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