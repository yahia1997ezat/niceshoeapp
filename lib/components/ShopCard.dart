import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
      padding: const EdgeInsets.all(20.0),
      decoration: new BoxDecoration(
          color: Colors.black, //new Color.fromRGBO(255, 0, 0, 0.0),
          borderRadius: new BorderRadius.all(const Radius.circular(25.0))),
      child: Stack(children: <Widget>[
        Center(
          child: Container(
            width: 250,
            child: GestureDetector( onTap:(){print("nice");},child: Image(image: AssetImage("images/shoes1.png"))),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.heart,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.shoppingBag,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "Nike Air Max 90",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    "Running System",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              )),
        )
      ]),
    );
  }
}
