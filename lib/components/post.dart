import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ressue_flutter/utils/image.dart';
import 'package:ressue_flutter/utils/textstyle.dart';

class Post extends StatelessWidget {
  final String username;
  final bool membership;
  final String time;
  final String content;
  final String like;
  const Post({
    super.key,
    required this.username,
    required this.membership,
    required this.time,
    required this.content,
    required this.like,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffd9d9d9),
                ),
                height: 25,
                width: 25,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                username,
                style: RSTextStyle.textfield_SemiBold(fontSize: 12),
              ),
              const SizedBox(
                width: 2,
              ),
              membership ? RSImage.membership : Container(),
              const SizedBox(
                width: 5,
              ),
              Text(
                '$time시간 전',
                style: RSTextStyle.textfield_Regular(
                    fontSize: 10, color: const Color(0xff7c7c7c)),
              )
            ],
          ),
          const SizedBox(
            height: 9,
          ),
          Container(
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(),
            child: Text(
              content,
              style: RSTextStyle.textfield_SemiBold(fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/like.png',
                width: 17.1,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                like,
                style: RSTextStyle.textfield_Medium(
                  fontSize: 12,
                  color: const Color(0xffb2b2b2),
                ),
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
