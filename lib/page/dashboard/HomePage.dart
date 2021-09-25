import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  static final List<String> imgSlider = [
    'Data Arranging_Monochromatic.png',
    'ecorp.png'
  ];
  final CarouselSlider autoPlayImage = CarouselSlider(
    items: imgSlider.map((fileImage) {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            'assets/${fileImage}',
            width: 10000,
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList(),
    options: CarouselOptions(),
  );

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        //Menambahkan Leading menu
        leading: new IconButton(
          icon: new Icon(Icons.home, color: Colors.white),
          onPressed: () {},
        ),
        //Menambahkan Beberapa Action Button
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.info_outline_rounded, color: Colors.white),
            onPressed: () {},
          ),
          new IconButton(
            icon: new Icon(Icons.logout_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          autoPlayImage,
          Container(
            margin: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            height: 45,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: _incrementCounter,
              child: Text(
                "Increment Counter",
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
