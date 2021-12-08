import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bhai_goa_chalte_hai/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_web/material.dart';
import 'controllers/menu_controller.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/search.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Goa is On',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: HomePage(),
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Color(0xFFFFFBFF),
        //       Color(0xFF3023AE),
        //     ])),
        child: Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      endDrawer: SideMenu(),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[NavBar(), Body()],
      )),
    ));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      mediumScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            // <a href="https://www.freepik.com/free-photos-vectors/people">People vector created by stories - www.freepik.com</a>
            child: Image.asset("assets/chair.png", scale: .85),
          ),
          FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: .6,
              child: Padding(
                  padding: EdgeInsets.only(left: 48),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Taking off to Goa in ...",
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF111111)),
                        ),
                        CountdownTimer(
                          endTime: DateTime.parse("2021-12-22 08:10:00+05:30")
                              .millisecondsSinceEpoch,
                          widgetBuilder: (_, CurrentRemainingTime? time) {
                            if (time == null) {
                              return RichText(
                                text: TextSpan(
                                  text: "Starting Engine...",
                                  style: TextStyle(
                                      fontSize: 60, color: Color(0xFF8591B0)),
                                  children: [
                                    TextSpan(
                                        text: "🐱",
                                        style: TextStyle(
                                          fontSize: 60,
                                          fontWeight: FontWeight.bold,
                                          // color: Colors.black54
                                        ))
                                  ],
                                ),
                              );
                            }
                            return RichText(
                              text: TextSpan(
                                text:
                                    '${time.days.toString().padLeft(2, '0')} : ${time.hours.toString().padLeft(2, '0')} : ${time.min.toString().padLeft(2, '0')} : ${time.sec.toString().padLeft(2, '0')} ',
                                style: TextStyle(
                                    fontSize: 60, color: Color(0xFF8591B0)),
                                children: [
                                  TextSpan(
                                      text: "🐱",
                                      style: TextStyle(
                                        fontSize: 60,
                                        fontWeight: FontWeight.bold,
                                        // color: Colors.black54
                                      ))
                                ],
                              ),
                            );
                          },
                        ),

                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 20),
                          child: Text(
                            "Now Repeat after me",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Montserrat-Regular",
                                color: Color(0xFF111111)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 10),
                          child: AnimatedTextKit(

                            animatedTexts: [
                              TypewriterAnimatedText('Go Corona! Corona Go!', textStyle: TextStyle(fontSize: 40, color: Color(0xFF8591B0)), speed: const Duration(milliseconds: 100),),
                              TypewriterAnimatedText('Omicron ki MKB! Omicron ki MKC!',  textStyle: TextStyle(fontSize: 40, color: Color(0xFF8591B0)), speed: const Duration(milliseconds: 100)),
                              TypewriterAnimatedText('Stay Positive! Tukbandi Ki G**d mein mt ghuso!',  textStyle: TextStyle(fontSize: 40, color: Color(0xFF8591B0)), speed: const Duration(milliseconds: 100)),
                              TypewriterAnimatedText('Ab Padhai likhai kro! IAS vIAS bno!',  textStyle: TextStyle(fontSize: 40, color: Color(0xFF8591B0)), speed: const Duration(milliseconds: 100)),

                            ],
                          ),
                        ),
                      ])))
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Taking off to Goa in...",
            style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat-Regular",
                color: Color(0xFF111111)),
          ),
          CountdownTimer(
            endTime:
                DateTime.parse("2021-12-22 08:10:00+05:30").millisecondsSinceEpoch,
            widgetBuilder: (_, CurrentRemainingTime? time) {
              if (time == null) {
                return RichText(
                  text: TextSpan(
                    text: "Starting Engine...",
                    style: TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                    children: [
                      TextSpan(
                          text: "🐱",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            // color: Colors.black54
                          ))
                    ],
                  ),
                );
              }
              return RichText(
                text: TextSpan(
                  text:
                      '${time.days.toString().padLeft(2, '0')} : ${time.hours.toString().padLeft(2, '0')} : ${time.min.toString().padLeft(2, '0')} : ${time.sec.toString().padLeft(2, '0')} ',
                  style: TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
                  children: [
                    TextSpan(
                        text: "🐱",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          // color: Colors.black54
                        ))
                  ],
                ),
              );
            },
          ),

          SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset("assets/chair.png", scale: 1),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 20),
            child: Text(
              "Now Repeat after me",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Montserrat-Regular",
                  color: Color(0xFF111111)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 10),
            child: AnimatedTextKit(

              animatedTexts: [
                TypewriterAnimatedText('Go Corona! Corona Go!', textStyle: TextStyle(fontSize: 40, color: Color(0xFF8591B0)), speed: const Duration(milliseconds: 100),),
                TypewriterAnimatedText('Omicron ki MKB! Omicron ki MKC!',  textStyle: TextStyle(fontSize: 40, color: Color(0xFF8591B0)), speed: const Duration(milliseconds: 100)),
                TypewriterAnimatedText('Stay Positive! Tukbandi Ki G**d mein mt ghuso!',  textStyle: TextStyle(fontSize: 40, color: Color(0xFF8591B0)), speed: const Duration(milliseconds: 100)),
                TypewriterAnimatedText('Ab Padhai likhai kro! IAS vIAS bno!',  textStyle: TextStyle(fontSize: 40, color: Color(0xFF8591B0)), speed: const Duration(milliseconds: 100)),

              ],
            ),
          ),
          //Search(),
          SizedBox(
            height: 30,
          )
        ],
      ),
    ));
  }
}
