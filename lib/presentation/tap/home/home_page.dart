import 'package:flutter/material.dart';
import 'package:kakao_ui_practice/presentation/widget/home_card.dart';
import 'package:kakao_ui_practice/presentation/widget/home_event.dart';
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
                  children: const [
                    HomeCard(
                      backGroundColor: Colors.lightGreen,
                      firstText: '그러게 일찍 좀',
                      firstTextColor: Colors.white,
                      secondText: '일어나지 그랬어',
                      secondTextColor: Colors.white,
                      thirdText: '기왕 늦은거 편하게 택시타고 가자',
                      thirdTextColor: Colors.black,
                      imageUrl: 'https://item.kakaocdn.net/do/d84248170c2c52303db27306a00fb861effd194bae87d73dd00522794070855d',
                    ),
                    HomeCard(
                      backGroundColor: Colors.yellowAccent,
                      firstText: '현대백화점에',
                      firstTextColor: Colors.black,
                      secondText: '주차시 추석선물!',
                      secondTextColor: Colors.black,
                      thirdText: '카카오 T 주차 오픈기념, 풍성하게 드려요',
                      thirdTextColor: Colors.black,
                      imageUrl: 'https://img.seoul.co.kr/img/upload/2021/11/24/SSI_20211124170021_O2.png',
                    ),
                    HomeCard(
                      backGroundColor: Colors.grey,
                      firstText: '당신의 이동을',
                      firstTextColor: Colors.white,
                      secondText: '연구합니다',
                      secondTextColor: Colors.white,
                      thirdText: '모빌리티 리포트가 궁금하다면?',
                      thirdTextColor: Colors.black,
                      imageUrl: 'https://www.hyundai.com/static/images/hyu_logo_og_image.jpg',
                    ),
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
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: const [
                  HomeEvent(text: '[이벤트] 추석에 KTX공항, 터미널 이용한다면?'),
                  HomeEvent(text: '[이벤트] 추석에 KTX공항, 터미널 이용한다면?'),
                  HomeEvent(text: '[이벤트] 추석에 KTX공항, 터미널 이용한다면?'),
                  HomeEvent(text: '[이벤트] 추석에 KTX공항, 터미널 이용한다면?'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
