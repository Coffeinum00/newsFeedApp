import 'package:flutter/material.dart';
import 'package:like_app/screens/home/feedPage/feed_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'News feed',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: const FeedPage(),
    );
  }
}
