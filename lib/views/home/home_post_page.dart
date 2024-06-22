import 'package:flutter/material.dart';
import 'package:ressue_flutter/components/post.dart';

class HomePostPage extends StatelessWidget {
  const HomePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Post(
            username: '뉴진스 사랑해',
            membership: true,
            time: '5',
            content: '오늘의 명언: 6월 22일',
            like: '7,'),
        Post(
            username: '뉴진스 사랑해',
            membership: true,
            time: '5',
            content: '오늘의 명언: 6월 22일',
            like: '7,')
      ],
    );
  }
}
