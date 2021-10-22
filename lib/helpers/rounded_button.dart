
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto/helpers/theme_colors.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final String? iconPath;
  final Function() onTap;
  final double widthButton;
  final double imageHeight;
  const MainButton({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    required this.onTap,
    this.iconPath,
    required this.widthButton,
    required this.imageHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width * this.widthButton,
        decoration: BoxDecoration(
          color: backgroundColor == null
              ? ThemeColors.primaryColor
              : backgroundColor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconPath == null
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Image(
                        image: AssetImage(iconPath!),
                        height: this.imageHeight,
                      ),
                    ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: textColor == null
                      ? ThemeColors.titleColor
                      : textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}