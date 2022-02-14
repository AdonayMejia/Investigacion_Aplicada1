import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Generador de Lenguajes Aleatorios'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var lenguajes = [
    'assets/images/c++.jpg',
    'assets/images/csharp.jpg',
    'assets/images/dart.png',
    'assets/images/java.jpg',
    'assets/images/Javascript.jpg',
    'assets/images/kotlin.png',
    'assets/images/php.jpg',
    'assets/images/python.png',
    'assets/images/Ruby.jpg'
  ];
  int index_1 = 0;
  int index_2 = 1;
  int index_3 = 2;

  void _incrementCounter() {
    setState(() {
      _counter++;
      index_1 = generaAleatorio();
      index_2 = generaAleatorio();
      index_3 = generaAleatorio();
    });
  }

  int generaAleatorio() {
    var random = new Random();
    return random.nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Image.asset(
                  lenguajes[index_1],
                  width: 100,
                  height: 100,
                )),
                Expanded(
                    child: Image.asset(
                  lenguajes[index_2],
                  width: 100,
                  height: 100,
                )),
                Expanded(
                    child: Image.asset(
                  lenguajes[index_3],
                  width: 100,
                  height: 100,
                ))
              ],
            ),
            const Text(
              'Has presionado el boton esta cantidad de veces',
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
        child: const Icon(Icons.autorenew),
      ),
    );
  }
}
