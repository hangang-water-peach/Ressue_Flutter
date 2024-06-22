import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ressue_flutter/utils/textstyle.dart';

class RSImage {
  static SvgPicture logo = SvgPicture.asset('assets/images/re_ssue.svg');
  static Image google_button = Image.asset(
    'assets/images/google_login_button.png',
  );
  static Container premium_banner = Container(
    alignment: Alignment.center,
    height: 83,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: Color(0xff000000),
      borderRadius: BorderRadius.all(
        Radius.circular(3),
      ),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Text(
          '프리미엄 멤버십에 가입하세요!',
          style: RSTextStyle.textfield_ExtraBold(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            right: 6,
            bottom: 5,
          ),
          alignment: Alignment.bottomRight,
          child: Text(
            '자세히 알아보기 <',
            style: RSTextStyle.textfield_SemiBold(
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        )
      ],
    ),
  );
}
