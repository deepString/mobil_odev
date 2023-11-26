import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
                width: double.infinity,
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, bottom: 8, right: 20),
                          child: Icon(
                            Icons.send,
                            color: Colors.black87,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                //width: 50,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            StoryWidget(
                                "assets/images/p1.webp", "profile_photo1"),
                            StoryWidget(
                                "assets/images/p2.jpg", "profile_photo2"),
                            StoryWidget(
                                "assets/images/p3.jpg", "profile_photo3"),
                            StoryWidget(
                                "assets/images/p4.png", "twitter_photo4"),
                            StoryWidget("assets/images/p5.jpg", "nike_photo5"),
                            StoryWidget(
                                "assets/images/p6.png", "adidas_photo6"),
                            StoryWidget(
                                "assets/images/p1.webp", "profile_photo1"),
                            StoryWidget(
                                "assets/images/p2.jpg", "profile_photo2"),
                            StoryWidget(
                                "assets/images/p3.jpg", "profile_photo3"),
                            StoryWidget(
                                "assets/images/p4.png", "twitter_photo4"),
                            StoryWidget("assets/images/p5.jpg", "nike_photo5"),
                            StoryWidget(
                                "assets/images/p6.png", "adidas_photo6"),
                          ],
                        ),
                      ),
                      PostItem(
                          "assets/images/p2.jpg",
                          "assets/images/post5.jpg",
                          "profile_photo2",
                          "Sultan Ahmet Camii"),
                      PostItem(
                          "assets/images/p3.jpg",
                          "assets/images/post2.jpg",
                          "profile_photo3",
                          "15 Temmuz Sehitler Koprusu"),
                      PostItem(
                          "assets/images/p4.png",
                          "assets/images/post3.jpg",
                          "twitter_photo4",
                          "Galata"),
                      PostItem(
                          "assets/images/p5.jpg",
                          "assets/images/post4.jpg",
                          "nike_photo5",
                          "Galataport"),
                      PostItem(
                          "assets/images/p6.png",
                          "assets/images/post1.jpg",
                          "adidas_photo6",
                          "Bogaz Kopru"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.home, size: 28, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:
                          Icon(Icons.search, size: 28, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.smart_display,
                          size: 28, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:
                          Icon(Icons.favorite, size: 28, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:
                          Icon(Icons.person, size: 28, color: Colors.black87),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Container PostItem(
          String avatar, String photo, String name, String location) =>
      Container(
          child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          avatar,
                        ),
                        radius: 20,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
            Image.asset(photo),
            LikeCommentBox(),
            CommentBox("profile_photo3",
                "Çok iyi foto olmuşşş. Eline saglik. Miss gibi gerçektenn. Unutmadan beni de etiketle"),
            CommentBox("profile_photo4", "Helal be."),
            CommentBox("profile_photo5", "Çok iyi olmuş."),
          ],
        ),
      ));

  Padding LikeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.black87),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.comment_bank_outlined, color: Colors.black87),
            ],
          ),
          Icon(Icons.flag_circle_outlined, color: Colors.black87),
        ],
      ),
    );
  }

  Padding CommentBox(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(text: " "),
                  TextSpan(
                    text: comment,
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget StoryWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                const Color.fromRGBO(214, 71, 103, 1),
                const Color.fromRGBO(241, 166, 117, 1),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 35,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
