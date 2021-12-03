import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/Screens/Home/comingsoon_page.dart';
import 'package:projeto/Screens/Home/intheater_page.dart';
import 'package:projeto/Screens/Home/news_page.dart';
import 'package:projeto/Screens/Home/drawer_list.dart';
import 'package:projeto/helpers/theme_colors.dart';

class HomePage extends StatefulWidget {

  final String email;
  final String nome;

  const HomePage({ Key? key, required this.email, required this.nome}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  var telaAtual = 0;
  var pageController = PageController();
  @override
  Widget build(BuildContext context) {
    print(widget.nome);

    Map<String,String> data = ModalRoute.of(context)!.settings.arguments as Map<String,String>;

    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      appBar: AppBar(
        backgroundColor: ThemeColors.primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),

      body: Stack(
        children: <Widget>[
          PageView(
            controller: pageController,
            children: [
              InTheaterPage(),
              ComingSoonPage(),
              NewsPage(),
            ],
            onPageChanged: (index){
              setState(() {
                telaAtual = index;
              });
            },
          ),
        ],
      ),
      //Barra de Navegação
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ThemeColors.yellow_logoColor,
        selectedItemColor: ThemeColors.primaryColor,
        unselectedItemColor: Colors.black.withOpacity(.40),

        selectedFontSize: 12,
        unselectedFontSize: 12,

        iconSize: 35,

        //Index do Botão Selecionado
        currentIndex: telaAtual,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Nos Cinemas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Em Breve',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Notícias',
          ),
        ],
        onTap: (index){
          setState(() {
            telaAtual = index;
          });

          pageController.animateToPage(
            index, 
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    color: ThemeColors.yellow_logoColor,
                    width: double.infinity,
                    height: 200,
                    padding: EdgeInsets.only(top: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/walter_white.jpg'),
                            ),
                          ),
                        ),
                        Text(
                          data['nome'].toString(),
                          //"Nome",
                          style: GoogleFonts.poppins(
                            color: ThemeColors.scaffoldBgColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          data['email'].toString(),
                          style: GoogleFonts.poppins(
                            color: ThemeColors.scaffoldBgColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  DrawerList(
                    listText: 'Minha Conta', 
                    icon: Icon(Icons.person), 
                    onTap: () {
                      Navigator.pushNamed(context, 'home'); 
                    }
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: DrawerList(
                      listText: 'Salvos', 
                      icon: Icon(Icons.bookmark), 
                      onTap: () {
                        Navigator.pushNamed(context, 'home'); 
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: DrawerList(
                      listText: 'Notificações', 
                      icon: Icon(Icons.notifications_outlined), 
                      onTap: () {
                        Navigator.pushNamed(context, 'home'); 
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: DrawerList(
                      listText: 'Sobre', 
                      icon: Icon(Icons.help), 
                      onTap: () {
                        Navigator.pushNamed(context, 'about'); 
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: DrawerList(
                      listText: 'Configurações', 
                      icon: Icon(Icons.settings), 
                      onTap: () {
                        Navigator.pushNamed(context, 'home'); 
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: DrawerList(
                      listText: 'Avalie-nos', 
                      icon: Icon(Icons.grade_outlined), 
                      onTap: () {
                        Navigator.pushNamed(context, 'home'); 
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: DrawerList(
                      listText: 'Termos de Uso', 
                      icon: Icon(Icons.gavel_outlined), 
                      onTap: () {
                        Navigator.pushNamed(context, 'home'); 
                      }
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}


