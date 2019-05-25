import 'package:flutter/material.dart';
import 'filter_button.dart';
import 'project_card.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  static double _height = 0;
  static double _width = double.infinity;
  static double _appbarElevation = 4;
  static double _applyButtonHeight = 50;
  static double _cardHeight = 150;
  static bool _showMoreDetails = false;

  static var _moreDetailsState = Row(
    children: <Widget>[
      Icon(
        Icons.keyboard_arrow_down,
      ),
      Text(
        "More Details"
      )
    ],
  );
  static var _hideDetailsState = Row(
    children: <Widget>[
      Icon(
        Icons.keyboard_arrow_up,
      ),
      Text(
          "Hide Details"
      )
    ],
  );
  static var _detailsState = _moreDetailsState;


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if(_counter % 2 == 0) {
        _height = 200;
        _appbarElevation = 0;
      }
      else {
        _height = 0;
        _appbarElevation = 4;
      }
      _counter++;

    });
  }
  void _test(var tag) {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondRoute(tag)),
      );
    });
  }
  
  void _showMore() {
    setState(() {
      if(!_showMoreDetails) {
        _showMoreDetails = true;
        _cardHeight = 500;
        _detailsState = _hideDetailsState;
      }
      else {
        _showMoreDetails = false;
        _cardHeight = 150;
        _detailsState = _moreDetailsState;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color(0xFF1e9eb9),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            backgroundColor: Color(0xFF59c2cf),
            pinned: true,
            floating: false,
            title: Text("Owen's Portfolio"),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  color: Color(0xFF1e9eb9),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.5),
                  ),
                  ProjectCard(
                    onPressed: () {_test('1');},
                    onPressedDetails: _showMore,
                    height: _cardHeight,
                    duration: Duration(milliseconds: 200),
                    detailsState: _detailsState,
                    splashColor: Colors.grey[200],
                    tag: '1',
                  ),
                  ProjectCard(
                    onPressed: () {_test('2');},
                    onPressedDetails: _showMore,
                    height: _cardHeight,
                    duration: Duration(milliseconds: 200),
                    detailsState: _detailsState,
                    splashColor: Colors.grey[200],
                    tag: '2',
                  ),
                  ProjectCard(
                    onPressed: () {_test('3');},
                    onPressedDetails: _showMore,
                    height: _cardHeight,
                    duration: Duration(milliseconds: 200),
                    detailsState: _detailsState,
                    splashColor: Colors.grey[200],
                    tag: '3',
                  ),
                  ProjectCard(
                    onPressed: () {_test('4');},
                    onPressedDetails: _showMore,
                    height: _cardHeight,
                    duration: Duration(milliseconds: 200),
                    detailsState: _detailsState,
                    splashColor: Colors.grey[200],
                    tag: '4',
                  ),
                  ProjectCard(
                    onPressed: () {_test('5');},
                    onPressedDetails: _showMore,
                    height: _cardHeight,
                    duration: Duration(milliseconds: 200),
                    detailsState: _detailsState,
                    splashColor: Colors.grey[200],
                    tag: '5',
                  ),
                  ProjectCard(
                    onPressed: () {_test('6');},
                    onPressedDetails: _showMore,
                    height: _cardHeight,
                    duration: Duration(milliseconds: 200),
                    detailsState: _detailsState,
                    splashColor: Colors.grey[200],
                    tag: '6',
                  ),
                ]
            ),
          ),
        ],
      ),
      floatingActionButton: FilterButton(onPressed: _incrementCounter) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondRoute extends StatelessWidget {
  SecondRoute(this._tag);
  var _tag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child:  Hero(
            tag: _tag,
            child: Container(
              color: Colors.white,
            )
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.moveTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height-60);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}


