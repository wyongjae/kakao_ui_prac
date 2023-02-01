import 'package:flutter/material.dart';
import 'package:kakao_ui_practice/presentation/widget/card.dart';
import 'package:kakao_ui_practice/presentation/widget/event.dart';
import 'package:kakao_ui_practice/presentation/widget/item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Kakao T',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                buildItem('assets/taxi.jpg', '택시'),
                buildItem('assets/blacktaxi.jpg', '블랙'),
                buildItem('assets/bycicle.jpg', '바이크'),
                buildItem('assets/carhandle.jpg', '대리'),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                buildItem('assets/parking.png', '주차'),
                buildItem('assets/carpool.jpg', '카풀'),
                buildItem('assets/navigation.png', '내비'),
                Opacity(
                  opacity: 0,
                  child: buildItem('assets/carpool.jpg', '카풀'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 170,
                child: PageView(
                  children: [
                    buildCard(
                        '그러게 일찍 좀',
                        Color(Colors.white.value),
                        '일어나지 그랬어',
                        Color(Colors.white.value),
                        '기왕 늦은거 편하게 택시타고 가자',
                        Color(Colors.black.value),
                        'https://item.kakaocdn.net/do/d84248170c2c52303db27306a00fb861effd194bae87d73dd00522794070855d',
                        Color(Colors.lightGreen.value)),
                    buildCard(
                        '현대백화점에',
                        Color(Colors.black.value),
                        '주차시 추석선물!',
                        Color(Colors.black.value),
                        '카카오 T 주차 오픈기념, 풍성하게 드려요',
                        Color(Colors.black.value),
                        'https://img.seoul.co.kr/img/upload/2021/11/24/SSI_20211124170021_O2.png',
                        Color(Colors.yellowAccent.value)),
                    buildCard(
                        '당신의 이동을',
                        Color(Colors.white.value),
                        '연구합니다',
                        Color(Colors.white.value),
                        '모빌리티 리포트가 궁금하다면?',
                        Color(Colors.black.value),
                        'https://www.hyundai.com/static/images/hyu_logo_og_image.jpg',
                        Color(Colors.blueGrey.value)),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Divider(
                thickness: 1.0,
                color: Colors.grey,
                indent: 8,
                endIndent: 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Event('추석에 KTX공항, 터미널 이용한다면?'),
                      Event('추석에 KTX공항, 터미널 이용한다면?'),
                      Event('추석에 KTX공항, 터미널 이용한다면?'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
