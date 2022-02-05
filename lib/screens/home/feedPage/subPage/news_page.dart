import 'package:flutter/material.dart';
import 'package:like_app/widgets/pacman.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key? key, required this.title, required this.url})
      : super(key: key);

  final String title;
  final String url;

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool isFavorite = false;
  var date = DateTime.now().year.toString() +
      '/' +
      DateTime.now().month.toString() +
      '/' +
      DateTime.now().day.toString();

  String bodyText = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
sed do eiusmod tempor incididunt ut labore et dolore
 magna aliqua. Aliquet risus feugiat in ante metus. 
 Metus vulputate eu scelerisque felis. Cursus metus 
 aliquam eleifend mi in nulla posuere. Vestibulum sed 
 arcu non odio euismod.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Colors.grey[800],
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.headline1,
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              size: 40,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 200,
              color: Colors.green,
              child: Image.network(widget.url, fit: BoxFit.cover),
            ),
            Pacman(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title,
                    style: Theme.of(context).textTheme.headline1),
                Text(
                  date,
                ),
              ],
            ),
            Pacman(),
            Container(
              child: Text(bodyText),
            )
          ],
        ),
      ),
    );
  }
}
