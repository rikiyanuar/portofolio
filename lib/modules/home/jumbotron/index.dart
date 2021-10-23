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
      alignment: Alignment.center,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        40,
        isMobile(context) ? 180 : 250,
        40,
        isMobile(context) ? 130 : 200,
      ),
      child: Column(children: [
        Text(
          "Hi, I'm Riki Yanuar",
          style: KjText.extraLargeBold.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          "Professional Flutter Engineer in Kediri, East Java, Indonesia",
          style: KjText.largeLight.copyWith(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40),
        Wrap(children: [
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.yellow),
              ),
              alignment: !isMobile(context) ? null : Alignment.center,
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
              alignment: !isMobile(context) ? null : Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Text(
                "See My Resume",
                style: KjText.mediumNormal.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          )
        ], runSpacing: 6),
      ]),
    );
  }
}