import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ressue_flutter/utils/textstyle.dart';

class Issue extends StatelessWidget {
  final String title;
  final String year;
  final String month;
  final String day;
  final String reader;
  final String username;
  final String content;
  const Issue({
    super.key,
    required this.title,
    required this.year,
    required this.month,
    required this.day,
    required this.reader,
    required this.username,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: const BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 178.87,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: RSTextStyle.textfield_SemiBold(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5.5,
            ),
            Text(
              '$year년 전 $month월 $day일 · 읽음 $reader',
              style: RSTextStyle.textfield_Light(fontSize: 12),
            ),
            const SizedBox(
              height: 6.5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
                color: Color(0xffdcf2ff),
              ),
              child: Row(
                children: [
                  Text(
                    username,
                    style: RSTextStyle.textfield_Bold(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      ' | $content',
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: RSTextStyle.textfield_Regular(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
