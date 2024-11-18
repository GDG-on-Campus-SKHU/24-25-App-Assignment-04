import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MyApp 클래스: 애플리케이션의 메인 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            // AppBar 설정
            appBar: AppBar(
              title: const Text("My profile"),
              backgroundColor:
                  const Color.fromARGB(255, 126, 171, 230), // AppBar 배경색
              centerTitle: true,
            ),

            // 화면 여백을 주기 위해 Padding 추가
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  //전체 위젯을 세로로
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    // 첫 번째 Column: 좋아하는 구름 이미지
                    Center(
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100), // 모서리 둥글게

                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/clouds.jpg"), // 이미지 경로
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30), //간격 삽입

                    const Divider(
                      //수평선
                      color: Color.fromARGB(255, 41, 39, 39),
                      thickness: 2.0,
                    ),

                    const SizedBox(height: 20), //간격 삽입

                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 54, 54, 54),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'Lee A Rim',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            textAlign: TextAlign.start,
                          ),

                          SizedBox(height: 20),

                          Text(
                            'Github ID',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Color.fromARGB(255, 54, 54, 54),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            '@remedang',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 20), //간격 삽입
                          Text(
                            'Introduce Me,,',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          ListTile(
                            leading: Icon(Icons.call),
                            title: Text(
                              '+82 01083848418',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),

                          ListTile(
                            leading: Icon(Icons.cake),
                            title: Text(
                              '30, September',
                              style: TextStyle(fontSize: 19),
                            ),
                          ),

                          Text(
                            '2025 Goals',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            textAlign: TextAlign.start,
                          ),
                          ListTile(
                            leading: Icon(Icons.flight),
                            title: Text(
                              '해외 여행가기(한 곳이상)',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),

                          ListTile(
                            leading: Icon(Icons.laptop_chromebook_sharp),
                            title: Text(
                              '동아리, 전공 내용 잘 익히기',
                              style: TextStyle(fontSize: 19),
                            ),
                          ),

                          ListTile(
                            leading: Icon(Icons.star),
                            title: Text(
                              '별 보러 가기',
                              style: TextStyle(fontSize: 19),
                            ),
                          )
                        ]),
                  ]),
            )));
  }
}
