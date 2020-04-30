import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_item.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index){
        return Column(
          children: <Widget>[
            ChatItem(
              isDeleted: false,
              isDelivered: false,
              isGroup: true,
              isMuted: false,
              isRead: false,
              isReceivedMessage: true,
              isSentMessage: false,
              messsage: 'Heyhc you are ihni in the loml It cant woek',
              contactName: 'Loml',
              groupName: 'Flutter Lagos',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,),
              child: Divider(),
            ),
          ],
        );
      },
      itemCount: 15,
    );
  }
}