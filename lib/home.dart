// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:convert';

// import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // getuser() async {
  final topUrl = "http://api.alquran.cloud/v1/surah";

  Future<List<usermodel>> getArticle() async {
    Response res = await get(Uri.parse(topUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['data'];

      List<usermodel> articles =
          body.map((dynamic item) => usermodel.fromJson(item)).toList();
      print(articles);
      return articles;
    } else {
      throw ("Not Found");
    }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: getArticle(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(child: CircularProgressIndicator()),
                );
              } else
                // ignore: curly_braces_in_flow_control_structures

                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      leading: Text(snapshot.data[i].numberOfAyahs.toString()),
                      title: Text(snapshot.data[i].englishname),
                      subtitle: Text(snapshot.data[i].name),
                    );
                  },
                );
            }));
  }
}

class usermodel {
  String name;
  String englishname;
  int number;
  int numberOfAyahs;

  usermodel({
    required this.name,
    required this.englishname,
    required this.number,
    required this.numberOfAyahs,
  });
  factory usermodel.fromJson(Map<String, dynamic> json) {
    return usermodel(
      name: json['name'] as String,
      englishname: json['englishNameTranslation'] as String,
      number: json['number'] ,
      numberOfAyahs: json['numberOfAyahs'] ,
    );
  }
}
