import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Ejemplo N°1';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyCont(),
    );
  }
}

class MyCont extends StatefulWidget {
  const MyCont({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyContState createState() => _MyContState();
}

class _MyContState extends State<MyCont> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo N°1',
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 150.0,
            ),
            Text(
              'Number is $_count',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: const SizedBox(
                width: 200,
                height: 200,
                child: Image(
                  image: AssetImage('images/_.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 20.0, color: const Color(0x1F050505)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(width: 30.0),
          FloatingActionButton(
            onPressed: _decrementCount,
            tooltip: 'Decrementar',
            child: const Icon(Icons.restore),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            onPressed: _incrementCount,
            tooltip: 'Incrementar',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
