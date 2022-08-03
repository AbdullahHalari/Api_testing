import 'dart:convert';

import 'package:apitesting/model/article_model.dart';
import 'package:http/http.dart';


//Topstories 

class TopstoriesApi {
 final  topUrl =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=f127e40b30d74e91a2ca7b0249ba1f27";

  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(topUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    
    } else {
      throw ("Not Found");
    }
  }
}
  
  // HeadlinesApi  
  class HeadlinesApi {
  
 final  headlineUrl =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=f127e40b30d74e91a2ca7b0249ba1f27";

  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse( headlineUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Not Found");
    }
  }
}  
  // PopularApi  
 class PopularApi {
  
 final  popularUrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=f127e40b30d74e91a2ca7b0249ba1f27";

  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(popularUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Not Found");
    }
  }
}
  // SportsApi  
 class SportsApi {
  
 final  sportUrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=f127e40b30d74e91a2ca7b0249ba1f27";

  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(sportUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Not Found");
    }
  }
}
  // Business  
 class BusinessApi {
  
 final  businessUrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=f127e40b30d74e91a2ca7b0249ba1f27";

  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(businessUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Not Found");
    }
  }
}
  // TechnologyApi  
 class TechnologyApi {
  
 final techUrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=f127e40b30d74e91a2ca7b0249ba1f27";

  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse( techUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Not Found");
    }
  }
}
 
  // Entertainment  
 class EntertainmentApi {
  
 final  enterUrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=f127e40b30d74e91a2ca7b0249ba1f27";

  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse( enterUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Not Found");
    }
  }
}
  // Health  
 class HealthApi {
  
 final  healthUrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=f127e40b30d74e91a2ca7b0249ba1f27";

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(healthUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Not Found");
    }
  }
}
  // Travel  
  class TravelApi {
  
 final  travelUrl =
      "https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=f127e40b30d74e91a2ca7b0249ba1f27";

  

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(travelUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Not Found");
    }
    
  }
  
}