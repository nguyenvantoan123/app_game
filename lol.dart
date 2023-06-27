import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/streamer.dart';

class Lol extends StatefulWidget {
  const Lol({Key? key}) : super(key: key);

  @override
  State<Lol> createState() => _LolState();
}

class _LolState extends State<Lol> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff0E1647), Color(0xff0A1033)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff1D2766), Color(0xff171F52)])),
          ),
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 85),
                child: const Text(
                  'Lendários',
                  style: TextStyle(
                      fontFamily: 'rajdhani',
                      fontSize: 20,
                      color: Color(0xffDDE3F0),
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 100),
                child: Image.asset('assets/images/icon6.png'),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/14.png',
                  scale: 0.9,
                ),
                Image.asset(
                  'assets/images/13.png',
                  scale: 0.9,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(left: 24, top: 120),
                      child: const Text(
                        'League of Legends',
                        style: TextStyle(
                            fontFamily: 'rajdhani',
                            fontSize: 28,
                            color: Color(0xffDDE3F0),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 40, left: 24, top: 12),
                      child: Text(
                        'É hoje que vamos chegar ao challenger sem perder uma partida da md10',
                        style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 13,
                            color: Color(0xffDDE3F0),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 24, left: 24),
                  child: Text(
                    'Jogadores',
                    style: TextStyle(
                        fontFamily: 'rajdhani',
                        fontSize: 18,
                        color: Color(0xffDDE3F0),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24, left: 205),
                  child: Text(
                    'Total 3',
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 13,
                        color: Color(0xffABB1CC),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (context, index) => ItemCard(
                streamer: streamers[index],
              ),
            )),
            SizedBox(
              width: 327,
              child: TextButton(
                  onPressed: () {},
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xffE61C44),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 16),
                          height: 56,
                          child: Image.asset('assets/images/4.png'),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          child: Image.asset('assets/images/Line.png'),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 24),
                          child: const Text(
                            'Entrar no servidor do Discord',
                            style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffDDE3F0)),
                          ),
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Streamer streamer;
  const ItemCard({
    Key? key,
    required this.streamer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              alignment: Alignment.topLeft,
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: const Color(0xff243189),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(streamer.avatar),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    streamer.name,
                    style: const TextStyle(
                        fontFamily: 'rajdhani',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffDDE3F0)),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Image.asset(streamer.image),
                    ),
                    Text(
                      streamer.state,
                      style: const TextStyle(
                          fontFamily: 'inter',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffDDE3F0)),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        const Divider(
          color: Color(0xff1D2766),
          height: 1,
          indent: 88,
        )
      ],
    );
  }
}
