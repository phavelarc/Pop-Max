import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/helpers/theme_colors.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/quentin_tarantino.png'),
                        fit: BoxFit.fill,
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Container(
                  margin: EdgeInsets.only(top: 200, bottom: 10),
                  height: 110,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/perfil.jpeg'),
                    ),
                  ),
                ),
                ],
              ),
              Text(
                "Desenvolvido por",
                style: GoogleFonts.poppins(
                  color: ThemeColors.yellow_logoColor,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 2, 20, 10),
                child: Text(
                  "Pedro Avelar",
                  style: GoogleFonts.poppins(
                    color: ThemeColors.yellow_logoColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                width: 500,
                height: 500,
                margin: EdgeInsets.fromLTRB(20, 80, 20, 0),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Sobre",
                        style: GoogleFonts.poppins(
                          color: ThemeColors.yellow_logoColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        " O tema escolhido é relacionado ao mundo cinematográfico. O objetivo desse aplicativo é disponibilizar para amantes e iniciantes do cinema, informações detalhadas sobre filmes que estão em cartaz e os filmes que ainda entrarão; destacar atores e diretores que estão em tendência no momento.",
                        style: GoogleFonts.poppins(
                          color: ThemeColors.titleColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                        ),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}