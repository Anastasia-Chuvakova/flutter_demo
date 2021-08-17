//import "dart:html";
import "package:flutter/material.dart";

class OnBoardingOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Image.asset("assets/back.png"), Text("Skip")],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 34.0),
              constraints: BoxConstraints.expand(height: 300.0),
              width: MediaQuery.of(context).size.width * 0.65,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/girl.png"), fit: BoxFit.cover)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width * 0.60,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  "Visible changes in 3 weeks",
                  style: TextStyle(fontSize: 38.0),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.0),
              padding: EdgeInsets.only(top: 15, bottom: 15.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                padding: EdgeInsets.only(
                    top: 15.0, bottom: 15.0, left: 15.0, right: 15.0),
                child: Text(
                  "Get My Plan".toUpperCase(),
                  style: TextStyle(fontSize: 14, fontFamily: "Lato"),
                ),
                onPressed: () => {
                  //do something
                },
                color: _colorFromHex('#A75DB4'),
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  Color _colorFromHex(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
