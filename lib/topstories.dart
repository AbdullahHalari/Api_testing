import 'package:apitesting/api_data/api_service.dart';
import 'package:flutter/material.dart';
import 'package:apitesting/cards/newscard.dart';
import 'package:apitesting/model/article_model.dart';

class Topstories extends StatefulWidget {
  const Topstories({Key? key}) : super(key: key);
  @override
  _TopstoriesState createState() => _TopstoriesState();
}

class _TopstoriesState extends State<Topstories> {
  TopstoriesApi client = TopstoriesApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data?? <Article>[];
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  newscard(articles[index], context),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
