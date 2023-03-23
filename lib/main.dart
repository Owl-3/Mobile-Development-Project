import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ordering App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ordering App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(padding: EdgeInsets.only(left: 20.0), children: <Widget>[
          SizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Welcome, Dancan',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF473D3A))),
              Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://images.pexels.com/photos/1315741/pexels-photo-1315741.jpeg',
                            )),
                      )))
            ],
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
            ),
            child: Container(
              child: Text(
                'Select your taste, We deliver',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF473D3A)),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Taste of The Week',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      color: Color(0xFFCEC7C4)),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            height: 410.0,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Image.network(
                  'https://images.pexels.com/photos/851555/pexels-photo-851555.jpeg',
                  width: 70),
              const Text('Caffe Misto'),
              const Text('Coffeeshop'),
              const Text(
                  'Our dark, rich espresso balanced with steamed milk and a light layer of foam'),
              const Text('\$4.99'),
            ]),
          )
        ]));

    /* body: Container(
    

          child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            child: Container(
              height: 100,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network('https://picsum.photos/250?image=9',
                      height: 100, width: 70),
                  Text('Mocha'),
                  Text('2.0 Usd'),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              height: 100,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network('https://picsum.photos/250?image=9',
                      height: 100, width: 70),
                  Text('Mocha'),
                  Text('2.0 Usd'),
                ],
              ),
            ),
          ),
        ],
      )*/
  }
}
