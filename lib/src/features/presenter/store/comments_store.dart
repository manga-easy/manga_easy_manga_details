// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class CommentsStore extends ChangeNotifier {
  static String mangaComments = """{
    "comments": [
        {
          "avatar":"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/58ef74d4-eed1-47f9-b825-abed0371f0d9/deqbr9p-1ba60883-0171-4488-ad51-6683519d98e5.jpg/v1/fill/w_1024,h_1276,q_75,strp/sung_jin_woo_by_issashuzen_deqbr9p-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI3NiIsInBhdGgiOiJcL2ZcLzU4ZWY3NGQ0LWVlZDEtNDdmOS1iODI1LWFiZWQwMzcxZjBkOVwvZGVxYnI5cC0xYmE2MDg4My0wMTcxLTQ0ODgtYWQ1MS02NjgzNTE5ZDk4ZTUuanBnIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.hIaDzTwvATkJDuA_0pswbKYkVvTQCmcK-En__IziGRU",
          "username": "Bruno Almeida",
          "rating": 5.0,
          "date": "15/04/2023",
          "message": "Brabo demais",
          "likes": 52
        },
        {
          "avatar":"https://cdn-icons-png.flaticon.com/512/5556/5556512.png",
          "username": "Roberto Junior",
          "rating": 3.0,
          "date": "11/04/2023",
          "message": "Mussum Ipsum, cacilds vidis litro abertis. Detraxit consequat et quo num tendi nada.Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose.Viva Forevis aptent taciti sociosqu ad litora torquent.",
          "likes": 2
        },
        {
          "avatar":"https://img.freepik.com/vetores-premium/o-avatar-do-perfil-de-usuario-feminino-e-uma-mulher-um-personagem-para-um-protetor-de-tela-com-emocoes_505620-617.jpg",
          "username": "Maria Joaquina",
          "rating": 4.5,
          "date": "23/03/2023",
          "message": "Um dos melhorzinho que ta tendo",
          "likes": 100
        }
      ]
    }""";
  var comments = CommentsModel.fromJson(mangaComments);
}

class CommentsModel {
  final List<CommentModel> comments;
  CommentsModel({required this.comments});

  factory CommentsModel.fromMap(Map<String, dynamic> map) {
    return CommentsModel(
      comments: List<CommentModel>.from(
        (map['comments'] as List<dynamic>).map<CommentModel>(
          (x) => CommentModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  factory CommentsModel.fromJson(String source) =>
      CommentsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class CommentModel {
  final String username;
  final String avatar;
  final double rating;
  final String date;
  final String message;
  final int likes;

  CommentModel({
    required this.username,
    required this.avatar,
    required this.rating,
    required this.date,
    required this.message,
    required this.likes,
  });

  factory CommentModel.fromMap(Map<String, dynamic> map) {
    return CommentModel(
      username: map['username'] as String,
      avatar: map['avatar'] as String,
      rating: map['rating'] as double,
      date: map['date'] as String,
      message: map['message'] as String,
      likes: map['likes'] as int,
    );
  }

  factory CommentModel.fromJson(String source) =>
      CommentModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
