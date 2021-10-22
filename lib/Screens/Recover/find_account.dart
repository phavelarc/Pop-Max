import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/helpers/theme_colors.dart';

import '../../helpers/rounded_button.dart';

class FindAccountPage extends StatefulWidget {
  const FindAccountPage({ Key? key }) : super(key: key);

  @override
  _FindAccountPageState createState() => _FindAccountPageState();
}

class _FindAccountPageState extends State<FindAccountPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 70, 10, 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Encontre a sua conta do PopMax",
                  style: GoogleFonts.poppins(
                    color: ThemeColors.titleColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Form(
                    key: _formKey,
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
                        hintText: "Digite seu e-mail",
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
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 150, 0, 8),
                  child: MainButton(
                    text: 'Encontrar',
                    backgroundColor: ThemeColors.yellow_logoColor,
                    textColor: ThemeColors.titleColor,
                    widthButton: 1,
                    imageHeight: 0,
                    onTap: () {
                      if(_formKey.currentState!.validate() == false) {
                      }
                      else {
                        Navigator.pushNamed(context, 'recover');
                      };
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
}