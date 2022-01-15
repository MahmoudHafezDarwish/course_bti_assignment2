import 'package:course_bti_assognment2/widgets/item.dart';
import 'package:course_bti_assognment2/widgets/sub_tem.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  String _string_image ;
  String _string ;


  Details(this._string_image, this._string);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Stack(
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image(
                  image: AssetImage(this._string_image),
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(this._string,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 32,
                                fontFamily: "Besley-Bold",
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Life Style',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 32,
                                fontFamily: "Besley-Bold",
                                color: Colors.black,
                              ))
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.play_circle_fill_rounded,
                        color: Colors.orange,
                        size: 60,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("from boots category from boots category from boots category from boots category from boots category from boots category from boots category ",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        fontFamily: "Besley-Regular",
                        color: Color(0xffA1A1B4),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/images/Bg.png'),
                        height: 50,
                        width: 50,
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
                          Text('Jane Rose',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 22,
                                fontFamily: "Besley-Regular",
                                color: Colors.black,
                              )),

                          Text("23.5k followes",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                fontFamily: "Besley-Regular",
                                color: Color(0xff000000),
                              )),

                        ],

                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Category(Icon(Icons.star_border,color: Colors.orange,), "Popular",color: Colors.black,),
                    SizedBox(width: 20,),
                    Category(Icon(Icons.stacked_line_chart_rounded,color: Colors.orange,), "Trending",color: Colors.black,),
                    SizedBox(width: 20,),
                    Category(Icon(Icons.update,color: Colors.orange,), "Recent",color: Colors.black,),
                    SizedBox(width: 20,),



                  ],
                ),
              ],
            ),
            PositionedDirectional(
              top: 30,
              start: 20,

              child: IconButton(
               icon: Icon( Icons.arrow_back_outlined,
                 color: Colors.white,
                 size: 30,),
                onPressed: (){
                 Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
