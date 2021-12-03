import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/Screens/Home/home_page.dart';
import 'package:projeto/Screens/Login/login_page.dart';
import 'package:projeto/helpers/theme_colors.dart';
import 'package:projeto/helpers/rounded_button.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({ Key? key }) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final _formKey = GlobalKey<FormState>();

  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  var _phoneController = TextEditingController();
  var _nameController = TextEditingController();

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
              //TEXTO
              children: [
                Text(
                  "Novo aqui?",
                  style: GoogleFonts.poppins(
                    color: ThemeColors.titleColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(
                    "Cadastre-se, é rápido e fácil!",
                    style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                //TEXTFIELD
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //NOME
                        TextFormField(
                          controller: _nameController,
                          validator: (value) {
                            if (_nameController.text.isEmpty) {
                              return "Esse campo não pode ficar vazio!";
                            };
                          },
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            fillColor: ThemeColors.textFieldBgColor,
                            filled: true,
                            hintText: "Nome",
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
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(18)),
                            ),
                          ),
                        ),
                        //E-MAIL
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextFormField(
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
                        ),
                        //CELULAR
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: TextFormField(
                            controller: _phoneController,
                            validator: (value) {
                              if (_phoneController.text.isEmpty) {
                                return "Esse campo não pode ficar vazio!";
                              }
                            },
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              fillColor: ThemeColors.textFieldBgColor,
                              filled: true,
                              hintText: "Celular",
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
                        //SENHA
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

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 200, 0, 8),
                  child: MainButton(
                    text: 'Cadastrar',
                    backgroundColor: ThemeColors.yellow_logoColor,
                    textColor: ThemeColors.titleColor,
                    widthButton: 1,
                    imageHeight: 0,
                    onTap: () {
                      criarConta(
                        _nameController.text,
                        _emailController.text,
                        _phoneController.text,
                        _passwordController.text,
                      );
                      if(_formKey.currentState!.validate() == false) {
                      }
                    },
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
  // CRIAR CONTA no Firebase Auth
  //
  void criarConta(nome, email, celular, senha) {

    FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: senha)
      .then((value) {

        print(value.user!.uid);

        FirebaseFirestore.instance.collection('usuarios').doc(value.user!.uid).set({
          'nome': nome,
          'email': email,
          'celular': celular,
        });

        exibirMensagem('Conta criada com sucesso!');
        //Navigator.pop(context);

      }).catchError((erro){
        if (erro.code == 'email-already-in-use'){
          exibirMensagem('Email já cadastrado!');
        } else if (erro.code == 'invalid-email'){
          exibirMensagem('Email inválido!');
        } else{
          exibirMensagem('Erro: ${erro.message}');
        }
      });

      Navigator.pop(context);
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


