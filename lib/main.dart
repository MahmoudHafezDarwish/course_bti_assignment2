import 'package:course_bti_assognment2/widgets/cart_item_widget.dart';
import 'package:course_bti_assognment2/widgets/item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/langs',
      // <-- change the path of the translation files
      fallbackLocale: Locale('en'),

      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  late Locale myLocale;

  @override
  Widget build(BuildContext context) {
    Locale locale;

    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(

        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          myLocale =
              deviceLocale!; // here you make your app language similar to device language , but you should check whether the localization is supported by your app
          print(myLocale.countryCode);
          locale = Locale(myLocale.languageCode);
          print(myLocale.languageCode);
        },
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: Card(
              margin: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r)),
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Image(
                    image: AssetImage('assets/images/p.jpg'),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  PositionedDirectional(
                    top: 30,
                    start: 30,
                    child: Icon(
                      Icons.segment_rounded,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 80.0, right: 0, left: 0),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Brows',
                              style: TextStyle(
                                  fontFamily: 'BesleyBlack',
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1,
                                  fontSize: 24.sp,
                                  color: Colors.white,
                                  backgroundColor: Colors.transparent),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "find podcast that suit to your interest",
                              style: TextStyle(
                                  fontFamily: 'Lobster-Regular',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  backgroundColor: Colors.transparent),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: 320.w,
                              height: 120.h,
                              child: TextField(
                                textAlign: TextAlign.values[3],
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20.sp,
                                  fontFamily: "Lobster-Regular",
                                  color: Colors.blue,
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.grey,
                                  contentPadding:
                                      EdgeInsetsDirectional.only(start: 10),
                                  hintText: "type keyword",
                                  hoverColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 0,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    fontFamily: "Lobster-Regular",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            MyItem(),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              height: 5,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: Text(''),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Handpicked',
                                    style: TextStyle(
                                        fontFamily: 'Lobster-Regular',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Colors.black,
                                        backgroundColor: Colors.transparent),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 5,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red,
                                    ),
                                  ),
                                  CardItemForCart(
                                      image:
                                          'assets/images/finnacel_freedom.jpg',
                                      product_name: 'finnacel freedom'),
                                  CardItemForCart(
                                      image: 'assets/images/Minimalism.jpg',
                                      product_name: 'Minimalism'),
                                  CardItemForCart(
                                      image: 'assets/images/Bisnis.jpg',
                                      product_name: 'Bisnis Strategy'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Top Authors',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16,
                                          fontFamily: "Besley-Regular",
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 60,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/Bg.png'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Moma',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 60,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/Bg.png'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Moma',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 60,
                                              height: 60,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                child: Image.asset(
                                                    'assets/images/Bg.png'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Moma',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (context.locale == Locale('en')) {
                context.setLocale(Locale('ar'));
              } else if (context.locale == Locale('ar')) {
                context.setLocale(Locale('en'));
              }
            },
            child: Icon(Icons.language),
          ),
        ),
      ),
    );
  }
}
