import 'package:course_bti_assognment2/widgets/sub_tem.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MyItem extends StatelessWidget {
  const MyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Category(Icon(Icons.star_border), "Popular"),
            SizedBox(width: 20,),
            Category(Icon(Icons.stacked_line_chart_rounded), "Trending"),
            SizedBox(width: 20,),
            Category(Icon(Icons.update), "Recent"),
            SizedBox(width: 20,),

            Category(Icon(Icons.stairs_outlined), "Magic"),
            SizedBox(width: 20,),

          ],
        ),
      ),
    );
  }
}
