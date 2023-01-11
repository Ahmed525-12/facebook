// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "homePage";
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    NameArgs args = ModalRoute.of(context)?.settings.arguments as NameArgs;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('imgs/facebookStory.jpg',
                           fit: BoxFit.cover,width: MediaQuery.of(context).size.width/3,),
                      ),
                    ),
                    Positioned(
                      // The Positioned widget is used to position the text inside the Stack widget
                      bottom: 10,
                      right: 10,
          
                      child: Container(
                        // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
          
                        child: Text(
                          args.name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      // The Positioned widget is used to position the text inside the Stack widget
                      top: 10,
                      left: 10,
          
                      child: Container(
                        // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
          
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                );
              },
              itemCount: 12,
            ),
          ),
          Expanded(
         flex: 2,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 19.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person, size: 60),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Text(
                                  "${args.name}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text("3h"),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(Icons.public_rounded)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "My post",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Text("100"),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  "imgs/like.jpg",
                                  width: 50,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("100"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Comments"),
                                SizedBox(
                                  width: 5,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 30,
                        color: Colors.black,
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Image.asset(
                                "imgs/singleLike.jpg",
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Like")
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "imgs/comment.jpg",
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Comment")
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "imgs/share.png",
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Share"),
                              SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        height: 30,
                        color: Colors.black,
                        thickness: 2,
                      ),
                    ],
                  ),
                );
              },
              itemCount: 8,
            ),
          )
        ],
      ),
    );
  }
}

class NameArgs {
  String name;
  NameArgs({required this.name});
}
