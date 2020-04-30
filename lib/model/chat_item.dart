import 'package:flutter/material.dart';
import 'package:whatsapp_clone/styles/colors.dart';
import 'package:whatsapp_clone/utils/margin.dart';

class ChatItem extends StatelessWidget {
  final AssetImage image;
  final String contactName;
  final String groupName;
  final String messsage;
  final bool isSentMessage;
  final bool isReceivedMessage;
  final bool isRead;
  final bool isDelivered;
  final int numOfMessage;
  final String date;
  final bool isPinned;
  final bool isGroup;
  final bool isMuted;
  final bool isDeleted;

  const ChatItem(
      {this.image,
      this.contactName,
      this.groupName,
      this.messsage,
      this.isSentMessage,
      this.isReceivedMessage,
      this.isRead,
      this.isDelivered,
      this.numOfMessage,
      this.date,
      this.isPinned,
      this.isGroup,
      this.isMuted,
      this.isDeleted});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
      ),
      title: Text(
        isGroup ? groupName : contactName,
      ),
      subtitle: isReceivedMessage
          ? Text(
              messsage,
              overflow: TextOverflow.ellipsis,
            )
          : isDeleted
              ? Row(
                  children: <Widget>[
                    Icon(Icons.error_outline),
                    XMargin(5),
                    Text(
                      'This message was deleted',
                    ),
                  ],
                )
              : isSentMessage
                  ? isDelivered
                      ? Row(
                          children: <Widget>[
                            Icon(
                              Icons.done_all,
                              color: isRead
                                  ? Colors.blue
                                  : Theme.of(context).iconTheme,
                            ),
                            XMargin(5),
                            Text(messsage),
                          ],
                        )
                      : Row(
                          children: <Widget>[
                            Icon(
                              Icons.done,
                            ),
                            XMargin(5),
                            Text(messsage),
                          ],
                        )
                  : Text(
                      isGroup
                          ? Text(
                              '$contactName: $messsage',
                            )
                          : messsage,
                      overflow: TextOverflow.ellipsis,
                    ),
      isThreeLine: false,
      trailing: isReceivedMessage
          ? isMuted
              ? isPinned
                  ? Column(
                      children: <Widget>[
                        Text('date here'),
                        Row(
                          children: <Widget>[
                            Icon(Icons.volume_off),
                            XMargin(5),
                            Icon(
                              Icons.edit,
                              size: 16,
                            ),
                            XMargin(5),
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15 / 2),
                                color: AppColorsLight.tdColor,
                              ),
                              child: Center(
                                child: Text(
                                  '4',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: <Widget>[
                        Text('date here'),
                        Row(
                          children: <Widget>[
                            Icon(Icons.volume_off),
                            XMargin(5),
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15 / 2),
                                color: AppColorsLight.tdColor,
                              ),
                              child: Center(
                                child: Text(
                                  '4',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
              : Column(
                  children: <Widget>[
                    Text('date here'),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15 / 2),
                        color: AppColorsLight.tdColor,
                      ),
                      child: Center(
                        child: Text(
                          '4',
                        ),
                      ),
                    ),
                  ],
                )
          : Text('date here'),
    );
  }
}
