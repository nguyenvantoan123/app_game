import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            Container(
              margin: const EdgeInsets.only(top: 72),
              child: Expanded(
                  child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/3.png',
                    ),
                  ),
                  Center(
                      child: Center(
                    child: Image.asset(
                      'assets/images/2.png',
                    ),
                  )),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 380),
                        height: 40,
                        child: const Text(
                          'Conecte-se',
                          style: TextStyle(
                              fontFamily: 'Rajdhani',
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                        child: Text(
                          'e organize suas',
                          style: TextStyle(
                              fontFamily: 'Rajdhani',
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                        child: Center(
                          child: Text(
                            'jogatinas',
                            style: TextStyle(
                                fontFamily: 'Rajdhani',
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: const Center(
                          child: Text(
                            'Crie grupos para jogar seus games',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const Center(
                        child: Text('favoritos com seus amigos',
                            style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 48),
              width: 274,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
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
                          margin: const EdgeInsets.only(left: 33),
                          child: const Text(
                            'Entrar com Discord',
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
