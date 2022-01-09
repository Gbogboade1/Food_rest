import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;
//   int _counter = 0;

//   void _incrementCounter() {
//     _counter++;
//     // setState(() {
//     // });

//     print('=====_incrementCounter========');
//   }

//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   // super.initState();

//   //   print('=====Stateful state: initial state========');
//   // }

//   @override
//   Widget build(BuildContext context) {
//     print('=====Stateful state: build========');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing commua makes auto-formatting nicer for build methods.
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _counter = "b";

  void _incrementCounter() {
    setState(() {
      _counter = _counter + "b";
    });

    print('=====_incrementCounter========');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
 
    print('=====Stateful state: initial state========');
  }

  @override
  Widget build(BuildContext context) {
    print('=====Stateful state: build========');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing commua makes auto-formatting nicer for build methods.
    );
  }
}
