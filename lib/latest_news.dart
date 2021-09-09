// @dart= 2.9
import 'package:flutter/material.dart';

class LatestNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.black),
          ),
        ],
        title: Text(
          'Latest news',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          buildItem(
            title: 'Your Full Marathon training plan   ',
            comments: 19,
            date: 'may 20,2021',
            hashtag: 'Running',
            imgUrl:
                'https://image.freepik.com/free-photo/young-couple-runner-running-running-road-city-park_41380-369.jpg',
          ),
          buildItem(
            title: 'Marathon training Guide for total beginners   ',
            comments: 5,
            date: 'may 20,2021',
            hashtag: 'training',
            imgUrl:
            'https://image.freepik.com/free-photo/male-sprinter-ready-running_342744-606.jpg',
          ),
          buildItem(
            title: 'Abs for women   ',
            comments: 0,
            date: 'may 20,2021',
            hashtag: 'training',
            imgUrl:
            'https://img.freepik.com/free-photo/happy-smiling-woman-training-abs-gym_7502-8781.jpg?size=338&ext=jpg',
          ),
          buildItem(
            title: 'How to get back into weighting and lifting after along time of rest ',
            comments: 20,
            date: 'may 20,2021',
            hashtag: 'Cardio',
            imgUrl:
            'https://image.freepik.com/free-photo/bodybuilding-concept-with-man-gym-lifting-barbell_23-2147675187.jpg',
          ),
        ],
      ),
    );
  }

  Widget buildItem(
          {String imgUrl,
          String hashtag,
          String title,
          String date,
          int comments}) =>
      InkWell(
        onTap: () {},
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(imgUrl), fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Text(
                        hashtag,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        title,
                        maxLines: 3,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      date,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.run_circle,
                              size: 15,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Logan',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.mode_comment_rounded,
                              size: 15,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'comments',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
