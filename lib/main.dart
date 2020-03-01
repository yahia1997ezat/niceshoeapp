import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:niceshoe/components/SortBy.dart';
import 'package:niceshoe/components/ShopCard.dart';
import 'package:niceshoe/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Color(0xfff5f5f4),
          primaryColor:Color(0xfff5f5f4),
      ),
      home: Scaffold(
//        appBar: AppBar(
//          iconTheme: IconThemeData(
//            size: 35,
//          ),
//          title: Text(""),
//          actions: <Widget>[
//             Icon(
//                Icons.search,
//            ),
//            ConstrainedBox(
//              constraints: BoxConstraints(minWidth: kTopBarActionSpace ),
//            ),
//            Icon(
//              Icons.tune,
//            ),
//            ConstrainedBox(
//              constraints: BoxConstraints(minWidth: kTopBarActionSpace ),
//            ),
//            Center(
//                child: new Container(
//                    height: 30,
//                    width: 30,
//                    decoration: BoxDecoration(
//                        color: Colors.black,
//                        borderRadius: BorderRadius.all(const Radius.circular(1000.0))
//                    ),
//                    child: Center(
//                      child: Text(
//                        "3",
//                        style: TextStyle(
//                          fontSize: 25.0,
//                          color: Colors.white,
//                        ),
//                      ),
//                    )),
//              ),
//          ],
//        ),
        drawer:
            Drawer(child: Text("nice") // Populate the Drawer in the next step.
                ),
        body: SafeArea(
          child: Shop(),
        ),
      ),
    );
  }
}

class Shop extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TopBar(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              Text(
                "Shoes",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              Flexible(child: SortBy())
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              ShopCard(),
              ShopCard(),
              ShopCard(),
            ],
          ),
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 20.0, top: 20.0, right: 20, bottom: 5),
      child: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.subject,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: Icon(
                Icons.search,
                size: 35,
              ),
            ),
            Expanded(
              child: Icon(
                Icons.tune,
                size: 35,
              ),
            ),
            Expanded(
              child: Center(
                child: new Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                            BorderRadius.all(const Radius.circular(1000.0))),
                    child: Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
