import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ressue_flutter/utils/image.dart';
import 'package:ressue_flutter/utils/textstyle.dart';
import 'package:ressue_flutter/views/home/home_issue_page.dart';
import 'package:ressue_flutter/views/home/home_post_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedButton = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                decoration: const BoxDecoration(),
                height: 29,
                width: 165,
                child: RSImage.logo,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedButton = 0;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 78,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: _selectedButton == 0
                            ? const Color(0xff000000)
                            : const Color(0xfff5f5f5),
                      ),
                      child: Text(
                        '이슈 Issue',
                        style: RSTextStyle.textfield_SemiBold(
                            fontSize: 12,
                            color: _selectedButton == 0
                                ? const Color(0xffffffff)
                                : const Color(0xff000000)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedButton = 1;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 78,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: _selectedButton == 1
                            ? const Color(0xff000000)
                            : const Color(0xfff5f5f5),
                      ),
                      child: Text(
                        '포스트 Post',
                        style: RSTextStyle.textfield_SemiBold(
                          fontSize: 12,
                          color: _selectedButton == 1
                              ? const Color(0xffffffff)
                              : const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              RSImage.premium_banner,
              const SizedBox(
                height: 8,
              ),
              _selectedButton == 0
                  ? const Expanded(child: HomeIssuePage())
                  : const Expanded(
                      child: HomePostPage(),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
