import 'package:flutter/material.dart';
import 'chat.dart'; 
import 'explore.dart'; 
import 'mytrip.dart'; 
import 'notifi.dart';
import 'profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabScreen(),
    );
  }
}

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 5, // Số lượng tab
      child: Scaffold(
        body: TabBarView(
          children: [
            ExplorePage(), 
            MyTrip(),
            ChatPage(), 
            Notifi(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: TabBar(
          labelColor: Color(0xFF00CEA6), // Màu của icon khi được chọn
          unselectedLabelColor: Colors.grey, // Màu của icon khi không được chọn
          indicatorSize: TabBarIndicatorSize.label, // Không cần thanh highlight
          tabs: [
            Tab(icon: Icon(Icons.explore)), // Icon cho tab Home
            Tab(icon: Icon(Icons.place)), // Icon cho tab Chat
            Tab(icon: Icon(Icons.chat)), // Icon cho tab MyTrip
            Tab(icon: Icon(Icons.notifications)), // Icon cho tab Notification
            Tab(icon: Icon(Icons.person)), // Icon cho tab Profile
          ],
        ),
      ),
    );
  }
}
