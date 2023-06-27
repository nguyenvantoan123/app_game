import 'package:flutter/material.dart';

// ignore: camel_case_types
class Streamer {
  final String avatar, state, name, image;
  final int size, id;

  Streamer({
    required this.id,
    required this.avatar,
    required this.name,
    required this.size,
    required this.state,
    required this.image,
  });
}

List<Streamer> streamers = [
  Streamer(
      id: 1,
      avatar: "assets/images/5.png",
      state: "Disponível",
      name: "Tiago Luchtenberg",
      size: 15,
      image: "assets/images/icon8.png"),
  Streamer(
      id: 2,
      avatar: "assets/images/17.png",
      name: "Rodrigo Gonçalves",
      size: 15,
      state: "Ocupado",
      image: "assets/images/icon7.png"),
  Streamer(
      id: 3,
      avatar: "assets/images/16.png",
      name: "Diego Fernandes",
      size: 15,
      state: "Indisponível",
      image: "assets/images/icon7.png")
];
