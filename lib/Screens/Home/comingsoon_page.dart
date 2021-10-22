import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/Screens/Details/detail_movie.dart';
import 'package:projeto/Modelo/movie.dart';
import 'package:projeto/Screens/Home/bottom_month.dart';
import 'package:projeto/helpers/theme_colors.dart';


class ComingSoonPage extends StatefulWidget {
  const ComingSoonPage({ Key? key }) : super(key: key);

  @override
  _ComingSoonPage createState() => _ComingSoonPage();
}

class _ComingSoonPage extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/eternals_top.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 13, 20, 5),
              child: Text(
                "Em Breve",
                style: GoogleFonts.poppins(
                  color: ThemeColors.yellow_logoColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 20, 10),
              child: Container(
                height: 277,
                margin: EdgeInsets.only(top: 10),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: soon.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailMoviePage(
                              soon[index],
                            ),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 225,
                            width: 155,
                            margin: EdgeInsets.only(right: 20, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  soon[index].imgPoster,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            child: Text(
                              soon[index].title,
                              style: GoogleFonts.poppins(
                                color: ThemeColors.yellow_logoColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ), 
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Text(
                "Diretores do Mês",
                style: GoogleFonts.poppins(
                  color: ThemeColors.yellow_logoColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
              child: DirectorMonth(),
            ),
          ],
        ),
      ),
    );
  }
}