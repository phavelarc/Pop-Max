
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/Screens/Home/home_page.dart';
import 'package:projeto/helpers/theme_colors.dart';
import 'package:projeto/helpers/rounded_button.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({ Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  var _nameController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bem vindo,",
                  style: GoogleFonts.poppins(
                    color: ThemeColors.titleColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    "Faça o login na sua conta.",
                    style: GoogleFonts.poppins(
                      color: ThemeColors.greyTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (_emailController.text.isEmpty) {
                              return "Esse campo não pode ficar vazio!";
                            }
                          },
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            fillColor: ThemeColors.textFieldBgColor,
                            filled: true,
                            hintText: "E-mail",
                            hintStyle: GoogleFonts.poppins(
                              color: ThemeColors.textFieldHintColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(18)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ThemeColors.yellow_logoColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(18)),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: _passwordController,
                            validator: (value) {
                              if (_passwordController.text.isEmpty) {
                                return "Esse campo não pode ficar vazio!";
                              }
                            },
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              fillColor: ThemeColors.textFieldBgColor,
                              filled: true,
                              hintText: "Senha",
                              hintStyle: GoogleFonts.poppins(
                                color: ThemeColors.textFieldHintColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ThemeColors.yellow_logoColor,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
               
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      TextButton(
                        child: Text(
                          'Esqueceu a senha?',
                          style: GoogleFonts.poppins(
                            color: ThemeColors.greyTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'find');
                        },
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 8),
                  child: MainButton(
                    text: 'Entrar',
                    backgroundColor: ThemeColors.yellow_logoColor,
                    textColor: ThemeColors.titleColor,
                    widthButton: 1,
                    imageHeight: 0,
                    onTap: () {
                      setState(() {
                        isLoading = true;
                      });
                      login(
                        _nameController.text,
                        _emailController.text, 
                        _passwordController.text
                      );
                      if(_formKey.currentState!.validate() == false) {
                      }
                    },
                  ),
                ),

                SizedBox(height: 16),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        MainButton(
                          text: '', 
                          backgroundColor: ThemeColors.titleColor,
                          iconPath: 'assets/images/google.png',
                          widthButton: 0.29,
                          onTap: () {},
                          imageHeight: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: MainButton(
                            text: '', 
                            backgroundColor: ThemeColors.faceButton,
                            iconPath: 'assets/images/face.png',
                            widthButton: 0.29,
                            imageHeight: 40,
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: MainButton(
                            text: '', 
                            backgroundColor: ThemeColors.imdbButton,
                            iconPath: 'assets/images/imdb.png',
                            widthButton: 0.29,
                            imageHeight: 60,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 7),
                  child: Row(
                    children: [
                      Text(
                        'Não tem uma conta? ',
                        style: GoogleFonts.poppins(
                          color: ThemeColors.titleColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'create_account');
                        },
                        child: Text(
                          'Cadastre-se',
                          style: GoogleFonts.poppins(
                            color: ThemeColors.yellow_logoColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //
  // LOGIN COM FIREBASE AUTH
  //
  void login(nome, email, senha){

    FirebaseAuth.instance.signInWithEmailAndPassword
    (email: email, password: senha).then((value){

      print(value.user!.uid);

      String nome = "";
      FirebaseFirestore.instance.collection('usuarios').doc(value.user!.uid).get().then((value){
        nome = value.data()!['nome'];
        print(nome);

        Map<String,String> data = {
          'nome': nome,
          'email': email,
        };
        Navigator.pushReplacementNamed(context, 'home', arguments: data);
      });

      //Navigator.pushReplacementNamed(context, 'home');
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage(email: email, nome: nome)));

    }).catchError((erro){
  
      if(erro.code == 'user-not-found'){
        exibirMensagem('Usuário não encontrado');
      }else if(erro.code == 'wrong-password'){
        exibirMensagem('Senha incorreta');
      }else if (erro.code == 'invalid-email'){
        exibirMensagem('Email inválido');
      }else{
        exibirMensagem('Erro: ${erro.message}.');
      }

    });
    
  }

  void exibirMensagem(msg){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: Duration(seconds: 2),
      ),
    );
  }
}