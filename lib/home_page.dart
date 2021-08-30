import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 4 * 10);
    List<String> list = [
      'https://thedirect.s3.amazonaws.com/media/article_full/spider-man-no-way-home-runtime-length-mcu.jpg',
      'https://cdn.onebauer.media/one/media/6036/9394/e176/d0a0/4f20/c79d/spider-man-no-way-home-logo.jpg?format=jpg&quality=80&width=960&height=540&ratio=16-9&resize=aspectfill',
      'https://static2.srcdn.com/wordpress/wp-content/uploads/2021/08/Spider-Man-No-Way-Home-Iron-Spider-costume.jpg',
      'https://i.gadgets360cdn.com/large/spider_man_no_way_home_trailer_record_1629958015889.jpg'
    ];
    return Scaffold(
      body: Container(
        height: 200,
        child: PageView.builder(
          controller: controller,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(list[index % 4]), fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
    );
  }
}
