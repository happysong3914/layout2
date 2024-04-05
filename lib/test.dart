import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube Mobile',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: YouTubeHomePage(),
    );
  }
}

class YouTubeHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
          /*  Image.asset(
              'assets/images/youtube_logo.png', // 유튜브 로고 이미지 경로
              height: 30,
            ),*/
            SizedBox(width: 8),
            Text('Home'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 인기 동영상 섹션
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Popular Videos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // 여기에 인기 동영상 목록을 가져오는 코드를 추가해야 합니다.
                itemBuilder: (context, index) {
                  return Container(
                    width: 160,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    color: Colors.grey[300],
                    child: Center(
                      child: Text(
                        'Video $index',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            // 구독한 채널 섹션
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Subscription Updates',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // 여기에 구독한 채널의 업데이트를 가져오는 코드를 추가해야 합니다.
                itemBuilder: (context, index) {
                  return Container(
                    width: 160,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    color: Colors.grey[300],
                    child: Center(
                      child: Text(
                        'Channel Update $index',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // 현재 선택된 아이템의 인덱스
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}