import 'package:course_bti_assognment2/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItemForCart extends StatefulWidget {
  String image = '';
  String product_name;

  CardItemForCart({required this.image, required this.product_name});

  @override
  _CardItemForCartState createState() =>
      _CardItemForCartState(image, product_name);
}

class _CardItemForCartState extends State<CardItemForCart> {
  String image = '';
  String product_name;

  _CardItemForCartState(this.image, this.product_name);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => Details(this.image, this.product_name),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Card(
          clipBehavior: Clip.hardEdge,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(image),
                height: 100,
                width: 100,
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product_name,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                        fontFamily: "Besley-Regular",
                        color: Colors.black,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text("from boots category",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: "Besley-Regular",
                        color: Color(0xffA1A1B4),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
