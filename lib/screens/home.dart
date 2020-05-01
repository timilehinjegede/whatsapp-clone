import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/provider/theme_provider.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/camera.dart';
import 'package:whatsapp_clone/screens/chats_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';
import 'package:whatsapp_clone/utils/margin.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int tabIndex = 1;
  List<Widget> fabs;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fabs = [
      Container(),
      _buildChatFab(),
      _buildStatusFab(),
      _buildCallFab(),
    ];

    _tabController.addListener(() {
      tabIndex = _tabController.index;
    });

    print(tabIndex);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Whatsapp',
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).changeTheme();
            },
            icon: Icon(Icons.wb_sunny),
          ),
          Icon(Icons.more_vert),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            SizedBox(
              width: 10,
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: fabs.elementAt(tabIndex),
    );
  }

  Widget _buildChatFab() {
    return FloatingActionButton(
      tooltip: 'New chat',
      onPressed: null,
      child: Icon(Icons.message),
    );
  }

  Widget _buildStatusFab() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: null,
          tooltip: 'New text',
          child: Icon(Icons.edit),
          mini: true,
        ),
        YMargin(15),
        FloatingActionButton(
          onPressed: null,
          tooltip: 'New status',
          child: Icon(Icons.camera_alt),
        ),
      ],
    );
  }

  Widget _buildCallFab() {
    return FloatingActionButton(
      tooltip: 'New call',
      onPressed: null,
      child: Icon(Icons.add_call),
    );
  }
}
