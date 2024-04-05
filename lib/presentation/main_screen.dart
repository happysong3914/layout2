import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/youtube_logo.png'),
            SizedBox(width: 8),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.cast,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              // 동작 추가
            },
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              // 동작 추가
            },
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              // 동작 추가
            },
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              // 동작 추가
            },
            color: Colors.black,
          ),
        ],
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            Image.asset('assets/test1.jpg'),
            Row(
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/test1.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text(
                      '신기한 돌색깔',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      '신기신기',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ]),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    // 동작 추가
                  },
                ),
              ],
            ),
            Image.asset('assets/test2.jpg'),
            Row(
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/test1.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text(
                      '파란색 비누 ㅎㅎ',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      '신기신기',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ]),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    // 동작 추가
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: 0,
        elevation: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: '탐색',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: '구독',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: '알림',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.theaters),
            label: '내 계정',
            backgroundColor: Colors.black,
          ),
        ],
        selectedIconTheme: IconThemeData(color: Colors.green), // 선택된 아이콘 스타일
        unselectedIconTheme: IconThemeData(color: Colors.grey), // 선택되지 않은 아이콘 스타일
      ),
    );
  }
}
