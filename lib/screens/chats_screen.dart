import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chat_item.dart';
import 'package:whatsapp_clone/model/chat.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            ChatItem(
              isDeleted: Chat.getAllChat[index].isDeleted,
              isDelivered: Chat.getAllChat[index].isDelivered,
              isGroup: Chat.getAllChat[index].isGroup,
              isMuted: Chat.getAllChat[index].isMuted,
              isRead: Chat.getAllChat[index].isRead,
              isReceivedMessage: Chat.getAllChat[index].isReceivedMessage,
              isSentMessage: Chat.getAllChat[index].isSentMessage,
              messsage: Chat.getAllChat[index].messsage,
              contactName: Chat.getAllChat[index].contactName,
              groupName: Chat.getAllChat[index].groupName,
              date: Chat.getAllChat[index].date,
              numOfMessage: Chat.getAllChat[index].numOfMessage,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50,
              ),
              child: Divider(),
            ),
          ],
        );
      },
      itemCount: Chat.getAllChat.length,
    );
  }
}
