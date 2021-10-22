import 'package:flutter/material.dart';
import 'package:portofolio/core/utils/kj_di.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(KjConst.imgJumbotron),
          fit: BoxFit.cover,
          alignment: Alignment.center,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(.7),
            BlendMode.srcOver,
          ),
        ),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 120, horizontal: 40),
      child: Column(children: [
        Text(
          "Hi, I'm Riki Yanuar",
          style: KjText.extraLargeBlackBold.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Professional Flutter Engineer in Kediri, Jawa Timur, Indonesia",
          style: KjText.largeBlackNormal.copyWith(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
        Row(children: [
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.yellow),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Text("Contact Me", style: KjText.mediumYellowNormal),
            ),
          ),
          SizedBox(width: 24),
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Text(
                "See My Resume",
                style: KjText.mediumBlackNormal.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          )
        ], mainAxisAlignment: MainAxisAlignment.center),
      ]),
    );
  }
}
