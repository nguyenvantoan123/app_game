import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/agendar.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/lol.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        body: Column(
          children: [
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 2, color: Color(0xff243189)),
                    ),
                    margin: const EdgeInsets.only(top: 56, left: 24),
                    child: Expanded(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: InkWell(
                              splashColor: Colors.black,
                              onTap: (() {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        Container(
                                          height: 174,
                                          decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                  end: Alignment.bottomCenter,
                                                  begin: Alignment.topCenter,
                                                  colors: [
                                                Color(0xff0E1647),
                                                Color(0xff0A1033)
                                              ])),
                                          child: Column(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 62, top: 24),
                                              child: Row(
                                                children: const [
                                                  Text(
                                                    'Deseja sair do',
                                                    style: TextStyle(
                                                        fontFamily: 'rajdhani',
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            Color(0xffDDE3F0)),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      'Game',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'rajdhani',
                                                          fontSize: 24,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: Color(
                                                              0xffDDE3F0)),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Play',
                                                    style: TextStyle(
                                                        fontFamily: 'rajdhani',
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xffE51C44)),
                                                  ),
                                                  Text(
                                                    '?',
                                                    style: TextStyle(
                                                        fontFamily: 'rajdhani',
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xffDDE3F0)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 23, left: 24),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 56,
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                            width: 1,
                                                            color: const Color(
                                                                0xff495BCC))),
                                                    child: TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                          'Não',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'inter',
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color(
                                                                  0xffDDE3F0)),
                                                        )),
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 8),
                                                    height: 56,
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffE51C44),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: TextButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          Login()));
                                                        },
                                                        child: const Text(
                                                          'Sim',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'inter',
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color(
                                                                  0xffDDE3F0)),
                                                        )),
                                                  )
                                                ],
                                              ),
                                            )
                                          ]),
                                        ));
                              }),
                              child: Ink.image(
                                  width: 48,
                                  height: 48,
                                  image: const AssetImage(
                                      'assets/images/15.png')))),
                    )),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 55),
                          child: const Text(
                            'Olá,',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffDDE3F0)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 55),
                          child: const Text(
                            'Tiago',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffDDE3F0)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 18),
                      child: const Text(
                        'Hoje é dia de vitória',
                        style: TextStyle(
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xffABB1CC)),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 56, left: 87),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffE51C44)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Agendar()));
                      },
                      icon: const Icon(Icons.add_outlined)),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 39),
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 8),
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff1B2565), Color(0xff243189)])),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Expanded(
                                child: Image.asset('assets/images/icon1.png'))),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: const Expanded(
                              child: Text(
                            'Ranqueada',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffDDE3F0)),
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff1B2565),
                              Color(0xff243189),
                            ])),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Expanded(
                                child: Image.asset('assets/images/icon2.png'))),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: const Expanded(
                              child: Text(
                            'Duelo 1x1',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffDDE3F0)),
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff1B2565),
                              Color(0xff243189),
                            ])),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Expanded(
                                child: Image.asset('assets/images/icon3.png'))),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: const Expanded(
                              child: Text(
                            'Diversão',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffDDE3F0)),
                          )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    width: 104,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff1B2565),
                              Color(0xff243189),
                            ])),
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Expanded(
                                child: Image.asset('assets/images/icon3.png'))),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: const Expanded(
                              child: Text(
                            'Diversão',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffDDE3F0)),
                          )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 24),
                  child: const Expanded(
                      child: Text(
                    'Partidas agendadas',
                    style: TextStyle(
                        fontFamily: 'rajdhani',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffDDE3F0)),
                  )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40, left: 135),
                  child: const Expanded(
                      child: Text(
                    'Total 6',
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffDDE3F0)),
                  )),
                )
              ],
            ),
            Expanded(
                child: MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Lol()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        height: 88,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 24, bottom: 16),
                                    child: Image.asset('assets/images/6.png')),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 20),
                                            child: const Text(
                                              'Lendários',
                                              style: TextStyle(
                                                  fontFamily: 'rajdhani',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xffDDE3F0)),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 110),
                                            child: const Text(
                                              'Ranqueada',
                                              style: TextStyle(
                                                  fontFamily: 'rajdhani',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xffABB1CC)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                              right: 106, top: 4, bottom: 8),
                                          child: const Text(
                                            'League of Legends',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffABB1CC)),
                                          )),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 16),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/icon4.png'),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                left: 13.3,
                                              ),
                                              child: const Text(
                                                'Sex 18/06 às 21:00h',
                                                style: TextStyle(
                                                    fontFamily: 'inter',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xffABB1CC)),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 60.67),
                                              child: Image.asset(
                                                  'assets/images/icon5.png'),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                left: 8.67,
                                              ),
                                              child: const Text(
                                                '3',
                                                style: TextStyle(
                                                    fontFamily: 'inter',
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xffDDE3F0)),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Image.asset('assets/images/11.png')
                                    ]),
                              ],
                            ),
                          ],
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: SizedBox(
                      height: 88,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin:
                                    const EdgeInsets.only(left: 24, bottom: 16),
                                child: Image.asset('assets/images/7.png'),
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 20, bottom: 4),
                                          child: const Text(
                                            'Yeah,boy',
                                            style: TextStyle(
                                                fontFamily: 'rajdhani',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xffDDE3F0)),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 130),
                                          child: const Text(
                                            'Diversão',
                                            style: TextStyle(
                                                fontFamily: 'rajdhani',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffABB1CC)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 75, bottom: 8),
                                      child: const Text(
                                        'Red Dead Redemption 2',
                                        style: TextStyle(
                                            fontFamily: 'inter',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffABB1CC)),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 20, bottom: 16),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/icon4.png'),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 13.3),
                                            child: const Text(
                                              'Qua 23/06 às 19:00h',
                                              style: TextStyle(
                                                  fontFamily: 'inter',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xffABB1CC)),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                left: 55.67),
                                            child: Image.asset(
                                                'assets/images/icon5.png'),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                              left: 8.67,
                                            ),
                                            child: const Text(
                                              '3',
                                              style: TextStyle(
                                                  fontFamily: 'inter',
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xffDDE3F0)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Image.asset('assets/images/11.png')
                                  ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    height: 88,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin:
                                  const EdgeInsets.only(left: 24, bottom: 16),
                              child: Image.asset('assets/images/8.png'),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                          bottom: 4,
                                          right: 118,
                                        ),
                                        child: const Text(
                                          'Rumo ao topo',
                                          style: TextStyle(
                                              fontFamily: 'rajdhani',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffDDE3F0)),
                                        ),
                                      ),
                                      const Text(
                                        '1x1',
                                        style: TextStyle(
                                            fontFamily: 'rajdhani',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffABB1CC)),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 140, bottom: 8, left: 20),
                                    child: const Text(
                                      'Counter Strike: GO',
                                      style: TextStyle(
                                          fontFamily: 'inter',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffABB1CC)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 10, bottom: 16),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/icon4.png'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 13.3),
                                          child: const Text(
                                            'Dom 20/06 às 09:00h',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffABB1CC)),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 52.67),
                                          child: Image.asset(
                                              'assets/images/icon5.png'),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 8.67,
                                          ),
                                          child: const Text(
                                            '2',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffDDE3F0)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Image.asset('assets/images/11.png')
                                ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    height: 88,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin:
                                  const EdgeInsets.only(left: 24, bottom: 16),
                              child: Image.asset('assets/images/9.png'),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 4),
                                        child: const Text(
                                          'Bora queimar tudo',
                                          style: TextStyle(
                                              fontFamily: 'rajdhani',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffDDE3F0)),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 43),
                                        child: const Text(
                                          'Ranqueada',
                                          style: TextStyle(
                                              fontFamily: 'rajdhani',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffABB1CC)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 138, bottom: 8),
                                    child: const Text(
                                      'Apex Legends',
                                      style: TextStyle(
                                          fontFamily: 'inter',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffABB1CC)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, bottom: 16),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/icon4.png'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 13.3),
                                          child: const Text(
                                            'Dom 20/06 às 14:20h',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffABB1CC)),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 60.67),
                                          child: Image.asset(
                                              'assets/images/icon5.png'),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 8.67,
                                          ),
                                          child: const Text(
                                            '3',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffDDE3F0)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Image.asset('assets/images/11.png')
                                ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 88,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin:
                                  const EdgeInsets.only(left: 24, bottom: 16),
                              child: Image.asset('assets/images/10.png'),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 4),
                                        child: const Text(
                                          'Valorosos',
                                          style: TextStyle(
                                              fontFamily: 'rajdhani',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffDDE3F0)),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 130),
                                        child: const Text(
                                          'Diversão',
                                          style: TextStyle(
                                              fontFamily: 'rajdhani',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffABB1CC)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 179, bottom: 8),
                                    child: const Text(
                                      'Valorant',
                                      style: TextStyle(
                                          fontFamily: 'inter',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffABB1CC)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, bottom: 16),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/icon4.png'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 13.3),
                                          child: const Text(
                                            'Sex 18/06 às 21:00h',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffABB1CC)),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 60.67),
                                          child: Image.asset(
                                              'assets/images/icon5.png'),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 8.67,
                                          ),
                                          child: const Text(
                                            '3',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffDDE3F0)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Image.asset('assets/images/11.png')
                                ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 88,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin:
                                  const EdgeInsets.only(left: 24, bottom: 16),
                              child: Image.asset('assets/images/7.png'),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 4),
                                        child: const Text(
                                          'Lendários',
                                          style: TextStyle(
                                              fontFamily: 'rajdhani',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffDDE3F0)),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 110),
                                        child: const Text(
                                          'Ranqueada',
                                          style: TextStyle(
                                              fontFamily: 'rajdhani',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffABB1CC)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 106, bottom: 8),
                                    child: const Text(
                                      'League of Legends',
                                      style: TextStyle(
                                          fontFamily: 'inter',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffABB1CC)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, bottom: 16),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/icon4.png'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 13.3),
                                          child: const Text(
                                            'Sex 18/06 às 21:00h',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffABB1CC)),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 60.67),
                                          child: Image.asset(
                                              'assets/images/icon5.png'),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 8.67,
                                          ),
                                          child: const Text(
                                            '3',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffDDE3F0)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Image.asset('assets/images/11.png')
                                ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    height: 88,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin:
                                  const EdgeInsets.only(left: 24, bottom: 16),
                              child: Image.asset('assets/images/12.png'),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 4),
                                        child: const Text(
                                          'Lendários',
                                          style: TextStyle(
                                              fontFamily: 'rajdhani',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xffDDE3F0)),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 110),
                                        child: const Text(
                                          'Ranqueada',
                                          style: TextStyle(
                                              fontFamily: 'rajdhani',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffABB1CC)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 106, bottom: 8),
                                    child: const Text(
                                      'League of Legends',
                                      style: TextStyle(
                                          fontFamily: 'inter',
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffABB1CC)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 20, bottom: 16),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/icon4.png'),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 13.3),
                                          child: const Text(
                                            'Sex 18/06 às 21:00h',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffABB1CC)),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 60.67),
                                          child: Image.asset(
                                              'assets/images/icon5.png'),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            left: 8.67,
                                          ),
                                          child: const Text(
                                            '3',
                                            style: TextStyle(
                                                fontFamily: 'inter',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffDDE3F0)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Image.asset('assets/images/11.png')
                                ]),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
