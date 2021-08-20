import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? renk;
  final String mesaj;
  MyContainer({this.renk = Colors.white, this.mesaj = ""});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: renk,
        ),
        child: Center(
            child: Text(
          '$mesaj',
          style: TextStyle(fontSize: 22),
        )),
      ),
    );
  }
}
