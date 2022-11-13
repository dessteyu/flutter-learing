import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

int multTwo(int val) => 2 * val;

Future<int> leasyFuncMultTwo(int val) {
  return Future.delayed(const Duration(seconds: 5), () => multTwo(val));
}

Stream<String> getName() {
  return Stream.periodic(
      const Duration(seconds: 3), ((computationCount) => 'Foo'));
}

Iterable<int> getOneToThree() sync* {
  yield 1;
  yield 2;
  yield 3;
}

class PairOfIntegers {
  final int value1;
  final int value2;

  PairOfIntegers(this.value1, this.value2);
}

class PairOfStrings {
  final String value1;
  final String value2;

  PairOfStrings(this.value1, this.value2);
}

class Pair<A, B> {
  final A value1;
  final B value2;

  Pair(this.value1, this.value2);
}

void test() async {
  final names = Pair(1, 'value');
  print('${names.value1} ${names.value2}');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    test();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
            const Text(
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
        child: const Icon(Icons.add),
      ),
    );
  }
}
