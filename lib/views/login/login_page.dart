import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ressue_flutter/utils/image.dart';
import 'package:ressue_flutter/utils/textstyle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 222,
            ),
            RSImage.logo,
            const SizedBox(
              height: 18,
            ),
            Text(
              '잊혀진 이슈를 다시 알립니다',
              style: RSTextStyle.textfield_Regular(fontSize: 15),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56.82),
              child: GestureDetector(
                onTap: () {
                  context.go('/home');
                },
                child: RSImage.google_button,
              ),
            ),
            const SizedBox(
              height: 92.53,
            ),
          ],
        ),
      ),
    );
  }
}
