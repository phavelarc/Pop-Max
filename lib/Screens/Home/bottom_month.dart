import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/Modelo/movie.dart';
import 'package:projeto/helpers/theme_colors.dart';

class CastMonth extends StatelessWidget {
  const CastMonth({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        height: 117,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: castmonth.length,
          itemBuilder: (context, index) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 30, bottom: 5),
                    child: Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            castmonth[index].actorImage,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        castmonth[index].actorName,
                        style: GoogleFonts.poppins(
                          color: ThemeColors.yellow_logoColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                  ),
                ],
              );
            
          }
        ),
      ),
      ]
    );
  }
}

class DirectorMonth extends StatelessWidget {
  const DirectorMonth({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        height: 117,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: directorsmonth.length,
          itemBuilder: (context, index) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 30, bottom: 5),
                    child: Container(
                      width: 70,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            directorsmonth[index].directorImage,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        directorsmonth[index].directorName,
                        style: GoogleFonts.poppins(
                          color: ThemeColors.yellow_logoColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                      ),
                  ),
                ],
              );
          }
        ),
      ),
      ]
    );
  }
}