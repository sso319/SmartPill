import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('시작하기'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // 첫 번째 버튼이 클릭되었을 때 수행할 작업
              },
              child: Text('버튼 1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 두 번째 버튼이 클릭되었을 때 수행할 작업
              },
              child: Text('버튼 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 세 번째 버튼이 클릭되었을 때 수행할 작업
              },
              child: Text('버튼 3'),
            ),
          ],
        ),
      ),
    );
  }
}
