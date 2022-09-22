import 'package:bane/model/news_popular.dart';
import 'package:bane/model/news_recommendation.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final NewsPopular? popular;
  final NewsRecommendation? recommendation;

  const DetailScreen({Key? key, this.popular, this.recommendation}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool resize = false;
  
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
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text('Perbesar Text'),
                  Switch(value: resize, onChanged: (bool value){
                    setState(() {
                      resize = value;
                    });
                  })
                ],
              ),
            ),
            
            Container(
              margin: const EdgeInsets.only(left: 16.0),
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
                style: TextStyle(
                  fontSize: resize? 16.0 : 14.0,
                  color: Colors.black87,
                ),
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
    if (widget.recommendation != null){
      return widget.recommendation!.image;
    } else {
      return widget.popular!.image;
    }
  }

  String title(){
    if (widget.recommendation != null){
      return widget.recommendation!.title;
    } else {
      return widget.popular!.title;
    }
  }

  String date(){
    if (widget.recommendation != null){
      return widget.recommendation!.date;
    } else {
      return widget.popular!.date;
    }
  }

  String source(){
    if (widget.recommendation != null){
      return widget.recommendation!.source;
    } else {
      return widget.popular!.source;
    }
  }

  String caption(){
    if (widget.recommendation != null){
      return widget.recommendation!.caption;
    } else {
      return widget.popular!.caption;
    }
  }
}
