import 'package:flutter/material.dart';
import 'package:sotauapp/components/color.dart';
import 'package:sotauapp/components/custom_appbar.dart';

class DetailArticle extends StatefulWidget {
  const DetailArticle({Key? key}) : super(key: key);

  @override
  _DetailArticleState createState() => _DetailArticleState();
}

class _DetailArticleState extends State<DetailArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconCode: 6,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'STUDENT ORIENTATION 2020 “SOTAU” Batch 9',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
              Container(
                height: 200,
                color: Colors.black12,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Card(
                    color: cardBgColor,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {},
                      child: SizedBox(
                        child: Container(
                          margin: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper sed pretium, at nibh molestie id vehicula nec tincidunt. Ultricies nisl, arcu in nullam consequat dui ridiculus mi. Fusce et sapien aliquam turpis. Vitae malesuada est nibh suspendisse dictum. Est, orci, sagittis suscipit adipiscing suscipit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ullamcorper sed pretium, at nibh molestie id vehicula nec tincidunt. Ultricies nisl, arcu in nullam consequat dui ridiculus mi. Fusce et sapien aliquam turpis. Vitae malesuada est nibh suspendisse dictum. Est, orci, sagittis suscipit adipiscing suscipit. ",
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
