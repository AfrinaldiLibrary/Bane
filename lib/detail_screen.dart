import 'package:bane/model/news_popular.dart';
import 'package:bane/model/news_recommendation.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final NewsPopular? popular;
  final NewsRecommendation? recommendation;

  const DetailScreen({Key? key, this.popular, this.recommendation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(image()),
                      fit: BoxFit.cover,
                      colorFilter:
                          const ColorFilter.mode(Colors.black54, BlendMode.darken),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16.0),
              child: Text(
                title(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
              child: Text(
                date(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                caption(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  source(),
                  style: Theme.of(context).textTheme.bodySmall,
                ))
          ],
        ),
      ),
    );
  }

  String image(){
    if (recommendation != null){
      return recommendation!.image;
    } else {
      return popular!.image;
    }
  }

  String title(){
    if (recommendation != null){
      return recommendation!.title;
    } else {
      return popular!.title;
    }
  }

  String date(){
    if (recommendation != null){
      return recommendation!.date;
    } else {
      return popular!.date;
    }
  }

  String source(){
    if (recommendation != null){
      return recommendation!.source;
    } else {
      return popular!.source;
    }
  }

  String caption(){
    if (recommendation != null){
      return recommendation!.caption;
    } else {
      return popular!.caption;
    }
  }
}
