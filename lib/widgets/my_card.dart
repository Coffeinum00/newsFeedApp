import 'package:flutter/material.dart';
import 'package:like_app/screens/home/feedPage/subPage/news_page.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key, required this.newsTitle, required this.imgURL})
      : super(key: key);

  final String newsTitle;
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NewsPage(
                        url: imgURL,
                        title: 'News $newsTitle',
                      )));
        },
        child: Card(
          elevation: 6.0,
          child: Container(
              color: Colors.blue,
              height: 150.0,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(imgURL), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 10,
                      bottom: 10,
                      child: Material(
                        elevation: 5,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'News $newsTitle',
                            style: TextStyle(
                                fontFamily: 'Catamaran', fontSize: 20.0),
                          ),
                        ),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
