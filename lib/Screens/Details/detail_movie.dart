import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:projeto/Modelo/movie.dart';
import 'package:projeto/helpers/theme_colors.dart';

// ignore: must_be_immutable
class DetailMoviePage extends StatefulWidget {
  final Movie movie;
  bool selected = true;

  DetailMoviePage(this.movie);
  @override
  _DetailMoviePageState createState() => _DetailMoviePageState();
}

class _DetailMoviePageState extends State<DetailMoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.movie.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
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
      backgroundColor: ThemeColors.primaryColor,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    widget.movie.imgPoster,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      ThemeColors.primaryColor,
                      ThemeColors.primaryColor.withOpacity(0.8),
                      ThemeColors.primaryColor.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.movie.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          text: "${widget.movie.year} | ${widget.movie.genre} | ${widget.movie.minute} min.\n",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Classificação Indicativa:",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: " ${widget.movie.age}",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            widget.movie.rating.toString(),
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(width: 5),
                          ...List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: (index < (widget.movie.rating / 2).floor())
                                  ? Colors.yellow
                                  : Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Sinopse:",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Text(
                widget.movie.overview,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 17,
                ),
                textAlign: TextAlign.justify
              ),
            ),
            if (widget.movie.casts.length > 0) ...[
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  "Elenco",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 15, top: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.movie.casts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  widget.movie.casts[index].image,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            widget.movie.casts[index].name,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}