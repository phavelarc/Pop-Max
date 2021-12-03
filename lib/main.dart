import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projeto/Screens/Home/intheater_page.dart';
import 'package:projeto/Screens/About/about.dart';
import 'Screens/Home/comingsoon_page.dart';
import 'Screens/Home/home_page.dart';
import 'Screens/Recover/recover_password.dart';
import 'Screens/Recover/find_account.dart';
import 'Screens/Create_Account/create_account.dart';
import 'Screens/Welcome/welcome_page.dart';
import 'Screens/Login/login_page.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  const String email = "";
  const String nome = "";

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PopMax',
      initialRoute: 'welcome',
      routes: {
        'welcome' : (context) => WelcomePage(),
        'login' : (context) => LoginPage(),
        'recover' : (context) => RecoverPage(),
        'find' : (context) => FindAccountPage(),
        'create_account' : (context) => CreateAccountPage(),
        'about' : (context) => AboutPage(),
        'home' : (context) => HomePage(email: email, nome: nome),
        '/Nos Cinemas' : (context) => InTheaterPage(),
        '/Em Breve' : (context) => ComingSoonPage(),
      }

    )
    
  );
}