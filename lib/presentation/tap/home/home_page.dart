import 'package:flutter/material.dart';

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
                _buildItem('assets/taxi.jpg', '택시'),
                _buildItem('assets/blacktaxi.jpg', '블랙'),
                _buildItem('assets/bycicle.jpg', '바이크'),
                _buildItem('assets/carhandle.jpg', '대리'),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                _buildItem('assets/parking.png', '주차'),
                _buildItem('assets/carpool.jpg', '카풀'),
                _buildItem('assets/navigation.png', '내비'),
                Opacity(
                  opacity: 0,
                  child: _buildItem('assets/carpool.jpg', '카풀'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 180,
                child: PageView(
                  children: [
                    _buildCard(),
                    _buildCard(),
                    _buildCard(),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(6.0),
              child: Divider(
                thickness: 1.0,
                color: Colors.grey,
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
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 5.0, 18.0, 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.park_outlined),
                            Text(
                              '[이벤트] 추석에 KTX공항, 터미널 이용한다면?',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 5.0, 18.0, 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.park_outlined),
                            Text(
                              '[이벤트] 추석에 KTX공항, 터미널 이용한다면?',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 5.0, 18.0, 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.park_outlined),
                            Text(
                              '[이벤트] 추석에 KTX공항, 터미널 이용한다면?',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
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

  Card _buildCard() {
    return Card(
      color: Colors.lightGreen,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '그러게 일찍 좀',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '일어나지 그랬어',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '기왕 늦은거 편하게 택시타고 가자',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn'
                ':ANd9GcTBMDWdVnO-SeiJILquqvUUPX3YPthaHQDtg7Z9LwowiA&s',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildItem(String asset, String title) {
  return Column(
    children: [
      Image.asset(
        asset,
        width: 80,
        height: 95,
      ),
      Text(title),
    ],
  );
}
