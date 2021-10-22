import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  final String listText;
  final Icon icon;
  final Function() onTap;
  const DrawerList({ Key? key, required this.listText, required this.icon, required this.onTap }) : super(key: key);

  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.icon,
      title: Text(widget.listText),
      onTap: widget.onTap,
    );
  }
}