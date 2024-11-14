import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyProfilePage',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Profile', style: TextStyle(color: Colors.white),),
          backgroundColor: const Color.fromARGB(255, 133, 220, 255),
          centerTitle: true,
        ),
        body: Padding( //여백 넣기
            padding: const EdgeInsets.all(16.0),
            child: Column( //전체 위젯을 세로로 구성
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container( //프로필 이미지
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/miu.jpeg"),
                        fit: BoxFit.fill)
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Divider( // 수평선
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  const SizedBox(height: 15,),
                  Column( // text 왼쪽 정렬
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'name',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey
                        ),
                        textAlign: TextAlign.start,
                      ), // name
                      const Text(
                        'Choi DaYeon',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),// myname
                      const SizedBox(height: 15),
                      const Text(
                        'Github ID',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey
                        ),
                        textAlign: TextAlign.start,
                      ), // git id
                      const Text(
                        '@choi-day',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ), // mygit id
                      const SizedBox(height: 15,),
                      const Text(
                        'Introduce Me,,,',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ), // intro~
                      SizedBox( //listview 크기 조절
                        height: 80,
                        child: ListView(
                          children: const <Widget>[
                            SizedBox(
                              height: 40,
                              child: ListTile(
                                leading: Icon(
                                    Icons.call,
                                    color: Colors.grey,
                                    size: 15.0
                                  ),
                                  title: Text(
                                    '+82 0107xxx5xxx',
                                    style: TextStyle(
                                      fontSize: 15.0
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: ListTile(
                                  leading: Icon(
                                    Icons.cake,
                                    color: Colors.grey,
                                    size: 15.0,
                                  ),
                                  title: Text(
                                    '18, July',
                                    style: TextStyle(
                                      fontSize: 15.0
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                              ),
                            )
                          ],
                        ),
                      ), //자기소개
                      const SizedBox(height: 25,),
                      const Text(
                        '2025 Goals',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ), //goals
                      SizedBox(
                        height: 120,
                        child: ListView(
                          children: const<Widget> [
                            SizedBox(
                              height: 40,
                              child: ListTile(
                                leading: Icon(
                                          Icons.auto_stories,
                                          color: Colors.grey,
                                          size: 15.0,),
                                title: Text(
                                    '영어 공부 하기',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: ListTile(
                                  leading: Icon(
                                    Icons.construction,
                                    color: Colors.grey,
                                    size: 15.0,
                                  ),
                                  title: Text(
                                    '정처기 자격증 따기',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              child: ListTile(
                                  leading: Icon(
                                    Icons.flight,
                                    color: Colors.grey,
                                    size: 15.0,
                                  ),
                                  title: Text(
                                    '외국에서 한달 살기',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ) //mygoals
                ]
              )
          ),
        ),
    );
  }
}