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
      this.isGroup,
      this.isMuted,
      this.isDeleted});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Theme.of(context).accentColor,
      ),
      title: Text(
        isGroup ? groupName : contactName,
      ),
      subtitle: 
      isReceivedMessage
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
                              color: isRead ? Colors.blue : Colors.grey[500],
                              size: 20,
                            ),
                            XMargin(5),
                            Flexible(
                              child: Text(
                                messsage,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: <Widget>[
                            Icon(
                              Icons.done,
                            ),
                            XMargin(5),
                            Flexible(
                              child: Text(
                                messsage,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ),
                          ],
                        )
                  : Flexible(
                      child: Text(
                        isGroup
                            ? Flexible(
                                child: Text(
                                  '$contactName: $messsage',
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                              )
                            : messsage,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
      isThreeLine: false,
      trailing: isReceivedMessage
          ? isMuted
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'yesterday',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    YMargin(5),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.volume_off,
                          size: 18,
                        ),
                        XMargin(5),
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Theme.of(context).accentColor,
                          ),
                          child: Center(
                            child: Text(
                              '4',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('yesterday'),
                    YMargin(5),
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Theme.of(context).accentColor,
                      ),
                      child: Center(
                        child: Text(
                          '4',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
          : Text('yesterday'),
    );
  }
}
