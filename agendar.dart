import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/listgame.dart';

class Agendar extends StatefulWidget {
  const Agendar({super.key});

  @override
  State<Agendar> createState() => _AgendarState();
}

class _AgendarState extends State<Agendar> {
  @override
  bool isButtonActive = true;
  bool click = true;
  late TextEditingController controller;
  void initState() {
    super.initState();

    controller = TextEditingController();
    controller.addListener(() {
      final isButtonActive = controller.text.isNotEmpty;
      setState(() => this.isButtonActive = isButtonActive);
    });
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
          elevation: 0,
          title: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 50),
            child: const Text(
              'Agendar partida',
              style: TextStyle(
                  fontFamily: 'rajdhani',
                  fontSize: 20,
                  color: Color(0xffDDE3F0),
                  fontWeight: FontWeight.w700),
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_outlined)),
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff171F52), Color(0xff1D2766)])),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 32, left: 24, bottom: 16),
                child: const Expanded(
                    child: Text(
                  'Categoria',
                  style: TextStyle(
                      fontFamily: 'rajdhani',
                      fontSize: 18,
                      color: Color(0xffDDE3F0),
                      fontWeight: FontWeight.w700),
                )),
              ),
              Container(
                margin: const EdgeInsets.only(left: 24),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            click = !click;
                          });
                        },
                        child: Container(
                            height: 120,
                            width: 104,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: const LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Color(0xff243189),
                                      Color(0xff1B2565)
                                    ])),
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, right: 8, left: 88),
                                child: Image.asset((click == false)
                                    ? 'assets/images/icon.on.png'
                                    : 'assets/images/icon.off.png'),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.only(bottom: 16, top: 4),
                                  child:
                                      Image.asset('assets/images/icon1.png')),
                              const Text(
                                'Ranqueada',
                                style: TextStyle(
                                    fontFamily: 'rajdhani',
                                    fontSize: 15,
                                    color: Color(0xffDDE3F0),
                                    fontWeight: FontWeight.w700),
                              )
                            ]))),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 120,
                      width: 104,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff243189), Color(0xff1B2565)])),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, right: 8, left: 88),
                              child: Image.asset('assets/images/icon.off.png')),
                          Container(
                              margin: const EdgeInsets.only(bottom: 16, top: 4),
                              child: Image.asset('assets/images/icon2.png')),
                          const Text(
                            'Duelo 1x1',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 15,
                                color: Color(0xffDDE3F0),
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 120,
                      width: 104,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff243189), Color(0xff1B2565)])),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, right: 8, left: 88),
                              child: Image.asset('assets/images/icon.off.png')),
                          Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              child: Image.asset('assets/images/icon3.png')),
                          const Text(
                            'Diversão',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 15,
                                color: Color(0xffDDE3F0),
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 120,
                      width: 104,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0xff243189), Color(0xff1B2565)])),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, right: 8, left: 88),
                              child: Image.asset('assets/images/icon.off.png')),
                          Container(
                              margin: const EdgeInsets.only(bottom: 16),
                              child: Image.asset('assets/images/icon1.png')),
                          const Text(
                            'Ranqueada',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 15,
                                color: Color(0xffDDE3F0),
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32, right: 24),
                width: 327,
                height: 68,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xff1B2565),
                      width: 1,
                    )),
                child: Row(
                  children: [
                    Container(
                      height: 68,
                      width: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xff171F52), Color(0xff1D2766)])),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 35),
                      child: const Text(
                        'Selecione um servidor',
                        style: TextStyle(
                            fontFamily: 'rajdhani',
                            fontSize: 18,
                            color: Color(0xffDDE3F0),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) => Container(
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        end: Alignment.bottomCenter,
                                        begin: Alignment.topCenter,
                                        colors: [
                                      Color(0xff0E1647),
                                      Color(0xff0A1033)
                                    ])),
                                child: MediaQuery.removePadding(
                                  context: context,
                                  removeBottom: true,
                                  child: Column(children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Image.asset(
                                            'assets/images/icon9.png')),
                                    Expanded(
                                      child: MediaQuery.removePadding(
                                          context: context,
                                          removeBottom: true,
                                          child: ListView.builder(
                                            scrollDirection: Axis.vertical,
                                            itemCount: games.length,
                                            itemBuilder: (context, index) =>
                                                ItemCard(
                                              game: games[index],
                                            ),
                                          )),
                                    )
                                  ]),
                                )));
                      },
                      icon: const Icon(Icons.chevron_right_outlined),
                      color: const Color(0xffABB1CC),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 28, left: 24, bottom: 28),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          const Text(
                            'Dia e mês',
                            style: TextStyle(
                                fontFamily: 'rajdhani',
                                fontSize: 18,
                                color: Color(0xffDDE3F0),
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 99),
                            child: const Text(
                              'Horário',
                              style: TextStyle(
                                  fontFamily: 'rajdhani',
                                  fontSize: 18,
                                  color: Color(0xffDDE3F0),
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 48,
                          width: 156,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff171F52),
                                    Color(0xff1D2766)
                                  ])),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 16),
                            child: const TextField(
                                keyboardType: TextInputType.datetime,
                                style: TextStyle(color: Color(0xffDDE3F0)),
                                decoration: InputDecoration(
                                  hintText: 'dd/mm',
                                  hintStyle: TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 13,
                                      color: Color(0xffABB1CC),
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          height: 48,
                          width: 156,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xff171F52),
                                    Color(0xff1D2766)
                                  ])),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.only(left: 16),
                            child: const TextField(
                                keyboardType: TextInputType.datetime,
                                style: TextStyle(color: Color(0xffDDE3F0)),
                                decoration: InputDecoration(
                                  hintText: 'hh:mm',
                                  hintStyle: TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 13,
                                      color: Color(0xffABB1CC),
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24),
                    child: Row(
                      children: [
                        const Text(
                          'Descrição',
                          style: TextStyle(
                              fontFamily: 'rajdhani',
                              fontSize: 18,
                              color: Color(0xffDDE3F0),
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 136),
                          child: const Text(
                            'Max 100 caracteres',
                            style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 13,
                                color: Color(0xffABB1CC),
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 24, top: 12),
                    height: 95,
                    width: 328,
                    child: TextFormField(
                      controller: controller,
                      minLines: 4,
                      maxLines: 6,
                      style: TextStyle(color: Color(0xffDDE3F0)),
                      decoration: InputDecoration(
                          focusedBorder: null,
                          focusColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Color(0xff243189), Color(0xff1B2565)]),
                        borderRadius: BorderRadius.circular(8)),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 56, right: 24),
                height: 56,
                width: 328,
                child: Center(
                    child: ElevatedButton(
                  onPressed: isButtonActive
                      ? () {
                          setState(() => isButtonActive = false);
                          controller.clear();
                        }
                      : null,
                  child: Text(
                    'Agendar',
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffDDE3F0)),
                  ),
                  style: ElevatedButton.styleFrom(
                      onSurface: Color(0xffE51C44).withOpacity(0.5),
                      minimumSize: Size(328, 56),
                      primary: Color(0xffE51C44),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Game game;
  const ItemCard({
    Key? key,
    required this.game,
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
              height: 68,
              width: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: const Color(0xff243189),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(game.avatar),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    game.name,
                    style: const TextStyle(
                        fontFamily: 'rajdhani',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffDDE3F0)),
                  ),
                ),
                Text(
                  game.nameE,
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
        const Divider(
          color: Color(0xff171F52),
          height: 1,
          indent: 88,
        )
      ],
    );
  }
}
