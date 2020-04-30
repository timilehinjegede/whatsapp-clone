import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/margin.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          leading: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundColor: Theme.of(context).accentColor,
              ),
              Positioned(
                top: 35,
                left: 38,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Theme.of(context).primaryIconTheme.color,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            'My status',
          ),
          subtitle: Text('Tap to add status update'),
        ),
        YMargin(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Recent updates'),
        ),
        YMargin(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Viewed updates'),
        ),
        YMargin(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text('Muted updates'),
        ),
      ],
    );
  }
}
