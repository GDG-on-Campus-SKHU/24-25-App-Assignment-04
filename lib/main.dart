import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfile(),
    );
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyProfile'),
        centerTitle: true, 
        backgroundColor: const Color.fromARGB(255, 76, 109, 138), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Center(
              child: CircleAvatar(
                radius: 60,

                backgroundImage:  AssetImage('assets/images/KakaoTalk_20241022_235349121.png'), 
              ),
            ),
            SizedBox(height: 15),
            
            
            Text(
              'NAME',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
                                   
                                   
                                 Text(
              '이민용', // 이름
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 10),
            
            Text(
              'GITHUB ID',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Text(
              '@myllli', 
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            
            
            Text(
              'Introduce Me,,',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+82 010-4312-6243'),
            ),
            ListTile(
              leading: Icon(Icons.cake),
              title: Text('25, September'),
            ),
            SizedBox(height: 20),
            
            
            Text(
              '2025 목표',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('학점 4.0 이상'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('책 매달 두 권씩 읽기'),
            ),
            ListTile(
              leading: Icon(Icons.flight),
              title: Text('친구와 해외여행 가기'),
            ),
          ],
        ),
      ),
    );
  }
}
