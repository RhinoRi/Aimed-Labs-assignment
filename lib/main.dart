import 'package:aimedlabs_assignment/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveCard(),
    );
  }
}

class ResponsiveCard extends StatelessWidget {
  const ResponsiveCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var redCardWidthSize = double.infinity;

    double widthSize = MediaQuery.of(context).size.width /
        3; // had to use MediaQuery to get the current screen size for being able to fix the grey box of the BottomCard

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Card here...
            Container(
              height: 110,
              //width: 350,
              width: redCardWidthSize,
              color: redCard,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    height: 23,
                    width: 180,
                    color: greyCard,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.87,
                    child: Container(
                      margin: const EdgeInsets.all(5.0),
                      height: 30,
                      // width: 280,
                      color: greenCard,
                    ),
                  )
                ],
              ),
            ),
            // some spacing between two cards...
            const SizedBox(
              height: 80.0,
            ),

            // Bottom Card here....
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 110,
                  //width: 350,
                  width: redCardWidthSize,
                  color: redCard,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 30,
                        // width: 280,
                        color: greenCard,
                      ),
                      // a little space from bottom of red card.
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: widthSize.roundToDouble(),
                  bottom: 85,
                  child: Container(
                    height: 50,
                    width: 200,
                    color: greyCard,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Hello. This assignment is submitted by Riddhi Goswami.
