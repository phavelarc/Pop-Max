import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:projeto/Modelo/movie.dart';
import 'package:projeto/helpers/theme_colors.dart';


class NewsPage extends StatefulWidget {
  NewsPage({ Key? key, this.name}) : super(key: key);
  final String? name;

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 700,
              margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                itemCount: post.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0, left: 10, bottom: 5),
                        child: Container(
                          width: 300,
                          child: Text(
                            post[index].postName,
                            style: GoogleFonts.poppins(
                              color: ThemeColors.yellow_logoColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              post[index].postImage,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: LikeButton(
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.favorite,
                                      color: isLiked ? ThemeColors.yellow_logoColor : Colors.grey,
                                      size: 30,
                                    );
                                  },
                                  likeCount: 0,
                                  countBuilder: (int? count, bool isLiked, String text) {
                                    var color = isLiked ? Colors.deepPurpleAccent : Colors.grey;
                                    Widget result;
                                    if (count == 0) {
                                      result = Text(
                                        "Curtir",
                                        style: TextStyle(color: color),
                                      );
                                    } else
                                      result = Text(
                                        text,
                                        style: TextStyle(color: color),
                                      );
                                    return result;
                                    
                                  },
                                ),
                              ),
                              IconButton(
                                color: Colors.grey,
                                icon: Icon(Icons.chat_bubble_outline),
                                iconSize: 30.0,
                                onPressed: () {
                                },
                              ),
                              Text(
                                "Comentar",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: LikeButton(
                              likeBuilder: (bool isLiked) {
                                return Icon(
                                  Icons.bookmark,
                                  color: isLiked ? ThemeColors.yellow_logoColor : Colors.grey,
                                  size: 30,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0, left: 10, bottom: 30, right: 10),
                          child: Text(
                            post[index].postNews,
                            style: GoogleFonts.poppins(
                              color: ThemeColors.titleColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.justify
                          ),
                      ),
                    ],
                  );
                },
              ), 
            ),
          ],
        ),
      ),
    );
  }
}