import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Icon _icon ;
  String _string ;
  late Color color ;


  Category(this._icon, this._string,{this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: this._icon,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          this._string,
          style: TextStyle(color: this.color),
        )
      ],
    );
  }
}
