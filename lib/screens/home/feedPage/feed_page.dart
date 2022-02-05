import 'package:flutter/material.dart';
import 'package:like_app/screens/home/feedPage/subPage/news_page.dart';
import 'package:like_app/widgets/my_card.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      'https://images.pexels.com/photos/2317904/pexels-photo-2317904.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      'https://images.pexels.com/photos/145378/pexels-photo-145378.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      'https://images.pexels.com/photos/255435/pexels-photo-255435.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      'https://images.pexels.com/photos/357159/pexels-photo-357159.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
      'https://images.pexels.com/photos/2558605/pexels-photo-2558605.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    ];

    return ListView.builder(
      itemCount: imgList.length,
      itemBuilder: (context, index) {
        String myTitle = (index + 1).toString();
        return MyCard(
          newsTitle: myTitle,
          imgURL: imgList[index],
        );
      },
    );
  }
}
