import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 95, 191, 129)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/images/GDG_me.JPG',
                  width: 150.0, // 원하는 width 값
                  height: 150.0, // 원하는 height 값
                  fit: BoxFit.cover, // 이미지를 원하는 방식으로 조정
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Container(
                height: 1.0,
                width: 360.0,
                color: Colors.grey,
              ),
            ),
            // ----------------- 이름 -----------------
            const Padding(
              padding: EdgeInsets.only(right: 360),
              child: Text('Name',
                  style: TextStyle(
                    color: Color.fromARGB(255, 111, 111, 111),
                    fontSize: 15,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 210),
              child: Text('Kwon MinSeok',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  )),
            ),
            // ----------------- 깃허브 아이디 -----------------
            const Padding(
              padding: EdgeInsets.only(right: 335, top: 20),
              child: Text('Github ID',
                  style: TextStyle(
                    color: Color.fromARGB(255, 111, 111, 111),
                    fontSize: 15,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 277),
              child: Text('@staralstjr',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  )),
            ),
            // ----------------- 자기소개 -----------------
            const Padding(
              padding: EdgeInsets.only(right: 210, top: 20),
              child: Text('My Information',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  )),
            ),
            // ----------------- 전화번호 -----------------
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 20, top: 10),
                  child: MaterialApp(
                      home: Icon(
                        Icons.call,
                        color: Color.fromARGB(255, 213, 40, 40),
                      ),
                      debugShowCheckedModeBanner: false),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('+82 01023993111',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 111, 111, 111),
                      )),
                ),
              ],
            ),
            // ----------------- 생일 -----------------
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 20, top: 10),
                  child: MaterialApp(
                      home: Icon(
                        Icons.cake,
                        color: Color.fromARGB(255, 177, 54, 147),
                      ),
                      debugShowCheckedModeBanner: false),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Text('23, April',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 111, 111, 111),
                      )),
                ),
              ],
              // ----------------- 새해 목표 -----------------
            ),
            const Padding(
              padding: EdgeInsets.only(right: 258, top: 20),
              child: Text('2025 Goals',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                  )),
            ),
            // ----------------- 목표 1 -----------------
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 20, top: 20),
                  child: MaterialApp(
                      home: Icon(
                        Icons.face,
                        color: Color.fromARGB(255, 208, 156, 105),
                      ),
                      debugShowCheckedModeBanner: false),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('백준 골드가기',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 111, 111, 111),
                      )),
                ),
              ],
            ),
            // ----------------- 목표 2 -----------------
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 20, top: 30),
                  child: MaterialApp(
                      home: Icon(
                        Icons.tablet_mac,
                        color: Color.fromARGB(255, 182, 92, 19),
                      ),
                      debugShowCheckedModeBanner: false),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 34),
                  child: Text('나만의 블로그 프로젝트 진행',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 111, 111, 111),
                      )),
                ),
              ],
            ),
            // ----------------- 목표 3 -----------------
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 35, right: 20, top: 30),
                  child: MaterialApp(
                      home: Icon(
                        Icons.coffee,
                        color: Color.fromARGB(255, 148, 85, 23),
                      ),
                      debugShowCheckedModeBanner: false),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 34),
                  child: Text('방학때 매일 스터디 카페가기',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 111, 111, 111),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
/* 과제 하면서 깨달음
   1. 아이콘과 텍스트를 나란히 놓는 등 가로로 UI를 배치하기 위해서는 
      Row 위젯을 사용하면 된다.
   2. 스타일을 주는 방법이 함수에 파라미터 넣듯 괄호안에 계속해서 
      요소를 추가하는 방법인데 적응이 필요하다.
*/