import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ProjectCard extends StatelessWidget {
  ProjectCard({
    @required this.onPressed,
    @required this.onPressedDetails,
    @required this.tag,
    this.height,
    this.width,
    this.duration,
    this.detailsState,
    this.splashColor,
    this.fillColor,
    this.issuesHeight,

  });

  bool _extended = false;
  final GestureTapCallback onPressed;
  final GestureTapCallback onPressedDetails;
  double height;
  double width;
  Duration duration;
  Color fillColor;
  Color splashColor;
  double issuesHeight = 0;
  var detailsState;
  var tag;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Hero(
        tag: tag,
        child: AnimatedContainer(
          duration: duration,
          height: height,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: fillColor,
            child: InkWell(
              onTap: onPressed,
              splashColor: splashColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                    children: <Widget>[
//                      AnimatedContainer(
//                        alignment: Alignment.bottomCenter,
//                        height: issuesHeight,
//                        curve: Curves.decelerate,
//                        duration: Duration(milliseconds: 500),
//                        decoration: new BoxDecoration(
//                          boxShadow: [
//                            new BoxShadow(
//                              color: Colors.black.withOpacity(0.5),
//                              blurRadius: 1,
//                            ),
//                          ],
//                          color: Colors.redAccent,
//                        ),
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.end,
//                          children: <Widget>[
//                            Text(
//                                "1"
//                            ),
//                            Container(
//                              color: Colors.redAccent,
//                              child: Text(
//                                "Warnings",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
//                              ),
//                            )
//                          ],
//                        ),
//
//                      ),
//                      AnimatedContainer(
//                        alignment: Alignment.bottomCenter,
//                        height: issuesHeight,
//                        curve: Curves.decelerate,
//                        duration: Duration(milliseconds: 500),
//                        decoration: new BoxDecoration(
//                          boxShadow: [
//                            new BoxShadow(
//                              color: Colors.black.withOpacity(0.5),
//                              blurRadius: 1,
//                            ),
//                          ],
//                          color: Colors.redAccent,
//                        ),
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.end,
//                          children: <Widget>[
//                            Text(
//                                "1"
//                            ),
//                            Container(
//                              color: Colors.redAccent,
//                              child: Text(
//                                "Warnings",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
//                              ),
//                            )
//                          ],
//                        ),
//
//                      ),
//                      AnimatedContainer(
//                        alignment: Alignment.bottomCenter,
//                        height: issuesHeight,
//                        curve: Curves.decelerate,
//                        duration: Duration(milliseconds: 500),
//                        decoration: new BoxDecoration(
//                          boxShadow: [
//                            new BoxShadow(
//                              color: Colors.black.withOpacity(0.5),
//                              blurRadius: 1,
//                            ),
//                          ],
//                          color: Colors.redAccent,
//                        ),
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.end,
//                          children: <Widget>[
//                            Text(
//                                "1"
//                            ),
//                            Container(
//                              color: Colors.redAccent,
//                              child: Text(
//                                "Warnings",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
//                              ),
//                            )
//                          ],
//                        ),
//
//                      ),
//                      AnimatedContainer(
//                        alignment: Alignment.bottomCenter,
//                        height: issuesHeight,
//                        curve: Curves.decelerate,
//                        duration: Duration(milliseconds: 500),
//                        decoration: new BoxDecoration(
//                          boxShadow: [
//                            new BoxShadow(
//                              color: Colors.black.withOpacity(0.5),
//                              blurRadius: 1,
//                            ),
//                          ],
//                          color: Colors.redAccent,
//                        ),
//                        child: Column(
//                          mainAxisAlignment: MainAxisAlignment.end,
//                          children: <Widget>[
//                            Text(
//                                "1"
//                            ),
//                            Container(
//                              color: Colors.redAccent,
//                              child: Text(
//                                "Warnings",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
//                              ),
//                            )
//                          ],
//                        ),
//
//                      ),
//                    ],
//                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      RawMaterialButton(
                        onPressed: onPressedDetails,
                        child: detailsState,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}