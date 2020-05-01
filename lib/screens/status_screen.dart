import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/status_item.dart';
import 'package:whatsapp_clone/model/status.dart';
import 'package:whatsapp_clone/utils/margin.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
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
            YMargin(5),
            _buildRecent(),
            YMargin(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('Viewed updates'),
            ),
            YMargin(5),
            _buildViewed(),
            YMargin(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Muted updates'),
                  Icon(Icons.keyboard_arrow_up, size: 26, color: Theme.of(context).primaryColor,)
                ],
              ),
            ),
            YMargin(5),
            _buildMuted(),
          ],
        ),
      ],
    );
  }

  // ===== BUILD RECENT UPDATES HERE =====
  Widget _buildRecent() {

    List<Status> isRecentList =  Status.getAllStatus.where((status) => status.isRecent == true).toList();
    int length = isRecentList.length;

    return Column(
      children: List<Widget>.generate(
        length,
            (index) {
          return StatusItem(
            contactName: isRecentList[index].contactName,
            time: isRecentList[index].time,
            // image is empty for now
            imagePath: isRecentList[index].imagePath,
            isViewed: isRecentList[index].isViewed,
            isRecent: isRecentList[index].isRecent,
          );
        },
      ),
    );
  }

  // ===== BUILD VIEWED UPDATES HERE =====
  Widget _buildViewed() {

    List<Status> isViewedList =  Status.getAllStatus.where((status) => status.isViewed == true).toList();
    int length = isViewedList.length;

    return Column(
      children: List<Widget>.generate(
        length,
        (index) {
          return StatusItem(
            contactName: isViewedList[index].contactName,
            time: isViewedList[index].time,
            // image is empty for now
            imagePath: isViewedList[index].imagePath,
            isViewed: isViewedList[index].isViewed,
            isRecent: isViewedList[index].isRecent,
          );
        },
      ),
    );
  }

  // ===== BUILD MUTED UPDATES HERE =====
  Widget _buildMuted() {

    List<Status> isMutedList =  Status.getAllStatus.where((status) => status.isViewed == false && status.isRecent == false).toList();
    int length = isMutedList.length;

    return Column(
      children: List<Widget>.generate(
        length,
            (index) {
          return StatusItem(
            contactName: isMutedList[index].contactName,
            time: isMutedList[index].time,
            // image is empty for now
            imagePath: isMutedList[index].imagePath,
            isViewed: isMutedList[index].isViewed,
            isRecent: isMutedList[index].isRecent,
          );
        },
      ),
    );
  }
}
