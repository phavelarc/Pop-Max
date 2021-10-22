
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/helpers/theme_colors.dart';
import 'package:projeto/helpers/rounded_button.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/myke.jpg'),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                Colors.transparent,
                ThemeColors.scaffoldBgColor,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
          
                  // TEXTO
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.fromLTRB(20, 50, 20, 50),
                    child: Text(
                      'Com o PopMax você fica sabendo tudo sobre o mundo cinematográfico!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.yellow_logoColor,
                        shadows: [
                          // bottomLeft
                          Shadow(
                            offset: Offset(-0.5, -0.5),
                            color: Colors.black,
                          ),
                          // bottomRight
                          Shadow(
                            offset: Offset(0.5, -0.5),
                            color: Colors.black,
                          ),
                          // topRight
                          Shadow(
                            offset: Offset(0.5, 0.5),
                            color: Colors.black,
                          ),
                          // topLeft
                          Shadow(
                            offset: Offset(-0.5, 0.5),
                            color: Colors.black,
                          ),
                      ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 55),
                    child: MainButton(
                      text: 'Inicie agora mesmo!', 
                      backgroundColor: ThemeColors.yellow_logoColor,
                      textColor: ThemeColors.titleColor,
                      widthButton: 1,
                      imageHeight: 0,
                      onTap: () {
                        Navigator.pushNamed(context, 'login');
                      },
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
}