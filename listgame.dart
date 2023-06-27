import 'package:flutter/material.dart';

// ignore: camel_case_types
class Game {
  final String avatar, name, nameE;
  final int size, id;

  Game(
      {required this.id,
      required this.avatar,
      required this.name,
      required this.nameE,
      required this.size});
}

List games = [
  Game(
      id: 1,
      avatar: "assets/images/6.png",
      name: "Lendários",
      nameE: "League of Legends",
      size: 20),
  Game(
      id: 2,
      avatar: "assets/images/8.png",
      name: "Rumo ao topo",
      nameE: "Counter Strike: Global Offensive",
      size: 20),
  Game(
      id: 3,
      avatar: "assets/images/9.png",
      name: "Bora queimar tudo",
      nameE: "Apex Legends",
      size: 20),
  Game(
      id: 4,
      avatar: "assets/images/7.png",
      name: "Yeah, Boy",
      nameE: "Red Dead Redemption 2",
      size: 20),
  Game(
      id: 5,
      avatar: "assets/images/10.png",
      name: "Valorosos",
      nameE: "Valorant",
      size: 20),
  Game(
      id: 6,
      avatar: "assets/images/18.png",
      name: "Rolezão Monstro",
      nameE: "Grand Thef Auto V",
      size: 20),
  Game(
      id: 7,
      avatar: "assets/images/19.png",
      name: "Construtores",
      nameE: "Minecraft",
      size: 15),
  Game(
      id: 8,
      avatar: "assets/images/20.png",
      name: "Battle Insane",
      nameE: "Battlefield 1",
      size: 15),
];
