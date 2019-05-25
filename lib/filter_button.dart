import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FilterButton extends StatelessWidget {
  FilterButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.blue,
      splashColor: Colors.lightBlueAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "FILTER",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}